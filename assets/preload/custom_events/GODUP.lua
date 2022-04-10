function onEvent(name, value1, value2)
	if name == "GODUP" then
    makeAnimatedLuaSprite('derpina', 'derpina', 0, 0);
    addAnimationByPrefix('derpina', 'derpina', 'derpina', 24, true);  
    objectPlayAnimation('derpina', 'derpina', true)
    addLuaSprite('derpina', false)
    scaleObject('derpina', 1.3, 1.3)	
    setObjectCamera('derpina', 'hud');
	runTimer('wait', 0.8);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'derpina', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('derpina', true);
	end
end