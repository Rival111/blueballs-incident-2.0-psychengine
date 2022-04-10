function onEvent(name, value1, value2)
	if name == "Image Flash Hud" then
		makeLuaSprite('image', value1, 0, 0);
		doTweenColor('hello', 'image', 'FFFFFFFF', 0.5, 'quartIn');
		setObjectCamera('image', 'hud');
        addLuaSprite('image', false);
        scaleObject('image', 199, 199)		
		runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'image', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('image', true);
	end
end