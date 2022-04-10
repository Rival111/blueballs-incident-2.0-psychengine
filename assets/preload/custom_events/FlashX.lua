function onCreate()
	makeLuaSprite('flashn', 'flashn', 0, 0);
	setLuaSpriteScrollFactor('flashn', 0, 0);
	setProperty('flashn.alpha', 0.0001);
	addLuaSprite('flashn', true);
	setObjectCamera('flashn', 'hud');	
end

function onEvent(name, value1, value2)
	if name == "FlashX" then
		setProperty('flashn.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'flashn', 0, 0.5, 'linear');
			setObjectCamera('flashn', 'hud');
	end
end