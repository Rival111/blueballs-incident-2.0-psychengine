function onEvent(name, value1, value2)
	if name == "GODRIGHT" then
    makeAnimatedLuaSprite('DERP', 'DERP', 100, 0);
    addAnimationByPrefix('DERP', 'DERP', 'DERP', 24, true);  
    objectPlayAnimation('DERP', 'DERP', true)
    addLuaSprite('DERP', false)
    scaleObject('DERP', 1.3, 1.3)	
    setObjectCamera('DERP', 'hud');
	runTimer('wait', 0.8);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'DERP', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('DERP', true);
	end
end