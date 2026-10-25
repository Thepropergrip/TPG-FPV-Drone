FPV_DEMON = FPV_DEMON or {}
local F=FPV_DEMON
F.weaponMasks={front=16,rear=32,mine=16,skeet=16}
local function controller(name)
 local g=assert(Group.getByName(name),'Missing group: '..tostring(name))
 assert(g:getSize()==1,'Use one drone per group for selective payload tasking')
 assert(g:getUnit(1):getTypeName()=='TPG_FPV_AI_RC3_DEMON','Expected DEMON drone')
 return g:getController()
end
local function params(weapon,point,agl)
 local p={weaponType=assert(F.weaponMasks[weapon],'Unknown weapon selector'),expend='One',attackQty=1,attackQtyLimit=true,groupAttack=false}
 if agl then
  assert(weapon~='skeet','Keep skeet at its established release profile')
  assert(agl>0,'AGL must be positive meters')
  p.altitude=land.getHeight(point)+agl
  p.altitudeEnabled=true
 end
 return p
end

function F.attackPoint(groupName,point,weapon,agl)
 local p=params(weapon,point,agl)
 p.point={x=point.x,y=point.y};p.x=point.x;p.y=point.y
 controller(groupName):pushTask({id='Bombing',params=p})
end
function F.attackUnit(groupName,targetName,weapon,agl)
 local target=assert(Unit.getByName(targetName),'Missing target unit')
 local pos=target:getPoint();local p=params(weapon,{x=pos.x,y=pos.z},agl)
 p.unitId=target:getID()
 controller(groupName):pushTask({id='AttackUnit',params=p})
end
function F.attackGroup(groupName,targetName,weapon,agl)
 local target=assert(Group.getByName(targetName),'Missing target group')
 local pos=target:getUnit(1):getPoint();local p=params(weapon,{x=pos.x,y=pos.z},agl)
 p.groupId=target:getID()
 controller(groupName):pushTask({id='AttackGroup',params=p})
end

function F.attackPair(groupName,frontPoint,rearPoint,agl)
 local tasks={}
 for i,item in ipairs({{'front',frontPoint},{'rear',rearPoint}})do
  local point=item[2];local p=params(item[1],point,agl)
  p.point={x=point.x,y=point.y};p.x=point.x;p.y=point.y
  tasks[i]={id='Bombing',number=i,enabled=true,auto=false,params=p}
 end
 controller(groupName):pushTask({id='ComboTask',params={tasks=tasks}})
end

function F.searchZone(groupName,zoneName,targetTypes)
 local zone=assert(trigger.misc.getZone(zoneName),'Missing trigger zone')
 controller(groupName):pushTask({id='EngageTargetsInZone',params={point={x=zone.point.x,y=zone.point.z},zoneRadius=zone.radius,targetTypes=targetTypes or {'Ground Units'},priority=0}})
end
function F.enableEventLog()
 if F.logging then return end
 F.logging=true
 world.addEventHandler({onEvent=function(_,e)
  if not e.initiator or not e.initiator.getTypeName then return end
  if e.initiator:getTypeName()~='TPG_FPV_AI_RC3_DEMON' then return end
  if e.id~=world.event.S_EVENT_SHOT and e.id~=world.event.S_EVENT_HIT then return end
  local name=e.weapon and e.weapon:getTypeName() or 'unknown'
  local pos=e.initiator:getPoint()
  env.info(string.format('FPV_DEMON event=%s unit=%s weapon=%s time=%.2f AGL_m=%.2f',e.id==world.event.S_EVENT_SHOT and 'SHOT' or 'HIT',e.initiator:getName(),name,e.time,pos.y-land.getHeight({x=pos.x,y=pos.z})))
 end})
end
