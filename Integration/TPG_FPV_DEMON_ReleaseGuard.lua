local lfs=require('lfs')
local injected=false
local nextAttempt=1
local callbacks={}
function callbacks.onSimulationStop() injected=false;nextAttempt=1 end
function callbacks.onSimulationStart() injected=false;nextAttempt=1 end
function callbacks.onSimulationFrame()
    if injected or DCS.getModelTime()<nextAttempt then return end
    if DCS.isMultiplayer() and not DCS.isServer() then injected=true;return end
    nextAttempt=DCS.getModelTime()+5
    local path=lfs.writedir()..'Mods/aircraft/TPG FPV Drone/MissionTools/FPV_DEMON_ReleaseGuard.lua'
    local file=io.open(path,'r')
    if not file then
        injected=true
        log.write('TPG_FPV_DEMON_RELEASE_GUARD',log.ERROR,'Missing runtime: '..path)
        return
    end
    local code=file:read('*a');file:close()
    local result,ok=net.dostring_in('mission',string.format('return a_do_script(%q)',code))
    if ok then injected=true
    else log.write('TPG_FPV_DEMON_RELEASE_GUARD',log.ERROR,tostring(result)) end
end
DCS.setUserCallbacks(callbacks)
