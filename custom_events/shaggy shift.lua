function onEvent(n, v1, v2)
if n == 'shaggy shift' then
function onUpdate() --ur mom
    songPos = getSongPosition()
    local currentBeat = (songPos/5000)*(curBpm/60)
    doTweenAngle('GUITTween','camHUD', 10*math.sin((currentBeat+4*0.25)* math.pi), 0.5)
end 
end
end