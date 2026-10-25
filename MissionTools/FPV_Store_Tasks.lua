FPV_STORES=FPV_STORES or {}
local F=FPV_STORES
F.version='2026-10-22-native-stores'
F.aimOffset=500
F.skeetAimOffset=505
F.skeetHandoff={TPG_FPV_AI_RC3_DEMON_ENV5=15,TPG_FPV_AI_RC3_DEMON_ENV15=20,TPG_FPV_AI_RC3_DEMON_CRAWL=15,TPG_FPV_AI_RC3_DEMON_LOWSLOW=20}
F.skeetSettings={NFP_fuze_type_nose='FZU39',function_delay_ctrl_FZU39_SUU65_SFW=.63,function_altitude_ctrl_FZU39_SUU65_SFW=900}
local allowed={TPG_FPV_AI_RC3_DEMON_ENV5=true,TPG_FPV_AI_RC3_DEMON_ENV15=true,TPG_FPV_AI_RC3_DEMON_ENV25=true,TPG_FPV_AI_RC3_DEMON_ENV40=true}
local function drone(name)
 local g=assert(Group.getByName(name),'Missing FPV group: '..tostring(name))
 assert(g:getSize()==1,'Use one FPV drone per group')
 local u=g:getUnit(1);assert(allowed[u:getTypeName()],'Expected a low-drop aircraft')
 return g,u
end
local function hasSkeet(u)
 for _,a in ipairs(u:getAmmo()or{})do if a.desc and a.desc.typeName:find('BLU108_4SKEET',1,true)then return true end end
 return false
end
function F.prepare(groupName)
 local g,u=drone(groupName)
 g:getController():setOption(AI.Option.Air.id.ROE,AI.Option.Air.val.ROE.WEAPON_HOLD)
 if hasSkeet(u)then g:getController():setOption(AI.Option.Air.id.REACTION_ON_THREAT,AI.Option.Air.val.REACTION_ON_THREAT.NO_REACTION)end
end
function F.makeTask(point,heading,offset)
 heading=heading%(2*math.pi)
 offset=offset or F.aimOffset
 local aim={x=point.x+offset*math.cos(heading),y=point.y+offset*math.sin(heading)}
 return{id='Bombing',number=1,enabled=true,auto=false,params={point=aim,x=aim.x,y=aim.y,weaponType=1073741822,expend='One',attackQty=1,attackQtyLimit=true,groupAttack=false,directionEnabled=true,direction=heading,altitudeEnabled=false}}
end
function F.attackUnit(groupName,targetUnitName,heading)
 local g,u=drone(groupName)
 local target=assert(Unit.getByName(targetUnitName),'Missing target unit: '..tostring(targetUnitName))
 local v=target:getVelocity();assert(v.x*v.x+v.z*v.z<.25,'Low-drop helper supports stationary targets')
 local tp,up=target:getPoint(),u:getPoint()
 heading=heading or math.atan2(tp.z-up.z,tp.x-up.x)
 if hasSkeet(u)then g:getController():setOption(AI.Option.Air.id.REACTION_ON_THREAT,AI.Option.Air.val.REACTION_ON_THREAT.NO_REACTION)end
 g:getController():setOption(AI.Option.Air.id.ROE,AI.Option.Air.val.ROE.OPEN_FIRE)
 g:getController():pushTask(F.makeTask({x=tp.x,y=tp.z},heading,hasSkeet(u)and F.skeetAimOffset or F.aimOffset))
end

function F.attackWhenNear(groupName,targetUnitName,heading,distance,timeout)
 local g,u=drone(groupName)
 local target=assert(Unit.getByName(targetUnitName),'Missing target unit: '..tostring(targetUnitName))
 local tp,up=target:getPoint(),u:getPoint()
 heading=heading or math.atan2(tp.z-up.z,tp.x-up.x)
 distance=distance or(hasSkeet(u)and(F.skeetHandoff[u:getTypeName()]or 20)or 25)
 local dx,dz=math.cos(heading),math.sin(heading)
 local deadline=timer.getTime()+(timeout or 600)
 F.prepare(groupName)
 timer.scheduleFunction(function(_,t)
  if not g:isExist()or not target:isExist()then return end
  local unit=g:getUnit(1);if not unit or not unit:isExist()then return end
  local p,q=unit:getPoint(),target:getPoint()
  local along=(q.x-p.x)*dx+(q.z-p.z)*dz
  local cross=math.abs((q.x-p.x)*(-dz)+(q.z-p.z)*dx)
  if along<=distance and cross<=25 then
   local ok,err=pcall(F.attackUnit,groupName,targetUnitName,heading)
   if not ok then env.info('FPV_STORES attack cancelled: '..tostring(err));return end
   env.info('FPVSTORE ARMED unit='..groupName..' t='..timer.getTime())
   return
  end
  if t>=deadline then
   env.info('FPV_STORES attack timed out: route must pass over target '..targetUnitName)
   return
  end
  return t+.1
 end,nil,timer.getTime()+.1)
end
