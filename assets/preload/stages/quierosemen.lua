function onCreate()

	makeLuaSprite('tetas', 'tetas', -500, -160);
	addLuaSprite('tetas', false);
    scaleObject('tetas', 4, 4)

	makeLuaSprite('stairwayhousewithouteffects', 'stairwayhousewithouteffects', -500, -160);
	addLuaSprite('stairwayhousewithouteffects', false);
    scaleObject('stairwayhousewithouteffects', 4, 4)   

end 
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 

			if value1 == 'nada' then

			setProperty('stairwayhousewithouteffects.visible', false);
			setProperty('tetas.visible', false);
	end	
 

		if value1 == 'algo' then

			setProperty('stairwayhousewithouteffects.visible', true);	
			setProperty('tetas.visible', true);	

		end									


		if value1 == 'nya' then

			setProperty('stairwayhousewithouteffects.visible', false);	
			setProperty('tetas.visible', true);		

		end
	end
end
