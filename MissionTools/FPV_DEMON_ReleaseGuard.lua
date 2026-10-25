if TPG_FPV_DEMON_RELEASE_GUARD then return end
TPG_FPV_DEMON_RELEASE_GUARD = {version='2.0.2', pending={}}
local guard = TPG_FPV_DEMON_RELEASE_GUARD
local grenadeNames = {
    TPG_FPV_AI_RC3_ACCU_DROP_RGD5_FRONT_DEMON=true,
    TPG_FPV_AI_RC3_ACCU_DROP_RGD5_REAR_DEMON=true,
}
local function grenade(name)
    return grenadeNames[(name or ''):gsub('^weapons%.bombs%.', '')]
end
local function remaining(unit)
    local count=0
    for _,item in ipairs(unit:getAmmo() or {}) do
        if item.desc and grenade(item.desc.typeName) then count=count+item.count end
    end
    return count
end
local function log(message) env.info('TPG_FPV_DEMON_RELEASE_GUARD '..message) end
local function releaseHold(record)
    if guard.pending[record.name]~=record then return end
    guard.pending[record.name]=nil
    local group=Group.getByName(record.name)
    if group and group:isExist() and group:getID()==record.id then
        group:getController():setOption(AI.Option.Air.id.ROE,record.resumeROE)
        log('READY group='..record.name..' time='..string.format('%.2f',timer.getTime()))
    end
end
world.addEventHandler({onEvent=function(_,event)
    if event.id~=world.event.S_EVENT_SHOT or not event.initiator or not event.weapon then return end
    local unit=event.initiator
    if unit:getTypeName()~='TPG_FPV_AI_RC3_DEMON' or not grenade(event.weapon:getTypeName()) then return end
    local count=remaining(unit)
    log(string.format('SHOT unit=%s weapon=%s time=%.2f remaining=%d',unit:getName(),event.weapon:getTypeName(),timer.getTime(),count))
    if count<1 then return end
    local group=unit:getGroup()
    local config=TPG_FPV_DEMON_RELEASE_GUARD_CONFIG or {}
    local overrides=config.groups or {}
    local settings=overrides[group:getName()] or config

    local resumeROE=settings.resumeROE or AI.Option.Air.val.ROE.OPEN_FIRE
    local record={name=group:getName(),id=group:getID(),resumeROE=resumeROE}
    guard.pending[record.name]=record

    group:getController():setOption(AI.Option.Air.id.ROE,AI.Option.Air.val.ROE.WEAPON_HOLD)
    timer.scheduleFunction(releaseHold,record,timer.getTime()+10)
    log('HOLD group='..record.name..' seconds=10')
end})
log('ACTIVE version='..guard.version)
