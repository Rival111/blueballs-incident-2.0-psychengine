function onEvent(name, value1, value2)
	if name == "GODLEFT" then
    makeAnimatedLuaSprite('trollge', 'trollge', -100, -70);
    addAnimationByPrefix('trollge', 'trollge', 'trollge', 24, true);  
    objectPlayAnimation('trollge', 'trollge', true)
    addLuaSprite('trollge', false)
    scaleObject('trollge', 1.3, 1.3)	
    setObjectCamera('trollge', 'hud');
	runTimer('wait', 0.8);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'trollge', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('trollge', true);
	end
end