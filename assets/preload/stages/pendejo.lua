function onCreate()

    makeAnimatedLuaSprite('Trall_Back', 'Trall_Back', -800, -190);
    scaleObject('Trall_Back', 5.3, 5.3)
    addAnimationByPrefix('Trall_Back', 'Trall_Back', 'Trall_Back', 24, true);  
    objectPlayAnimation('Trall_Back', 'Trall_Back', true)
  	addLuaSprite('Trall_Back', false);

  	makeLuaSprite('Trall_girl', 'Trall_girl', -500, -160);
    addLuaSprite('Trall_girl', false);
    doTweenAngle('Trall_girl', 'Trall_girl' , 40000 , 222, circInOut);
    scaleObject('Trall_girl', 1, 1)  

    makeLuaSprite('Trall_girl2', 'Trall_girl2', 1200, -160);
    addLuaSprite('Trall_girl2', false);
    doTweenAngle('Trall_girl2', 'Trall_girl2' , 40000 , 222, circInOut);
    scaleObject('Trall_girl2', 1, 1)

  	makeAnimatedLuaSprite('stupidclown', 'stupidclown', 90, 255);
     addAnimationByPrefix('stupidclown', 'stupidclown', 'stupidclown', 24, true);  
    objectPlayAnimation('stupidclown', 'stupidclown', true)
  	addLuaSprite('stupidclown', false);
 
  	makeAnimatedLuaSprite('stupiderp', 'stupiderp', -250, 255);
    scaleObject('stupiderp', 1, 1)
    addAnimationByPrefix('stupiderp', 'stupiderp', 'stupiderp', 24, true);  
    objectPlayAnimation('stupiderp', 'stupiderp', true)
  	addLuaSprite('stupiderp', false);

   	makeAnimatedLuaSprite('stupidsmiler', 'stupidsmiler', -90, 255);
    scaleObject('stupidsmiler', 1, 1)
    addAnimationByPrefix('stupidsmiler', 'stupidsmiler', 'stupidsmiler', 24, true);  
    objectPlayAnimation('stupidsmiler', 'stupidsmiler', true)
  	addLuaSprite('stupidsmiler', false);

  	makeAnimatedLuaSprite('stupidstair', 'stupidstair', 260, 255);
    scaleObject('stupidstair', 1, 1)
    addAnimationByPrefix('stupidstair', 'stupidstair', 'stupidstair', 24, true);  
    objectPlayAnimation('stupidstair', 'stupidstair', true)
  	addLuaSprite('stupidstair', false);    

end 
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 

			if value1 == 'nadie' then

			setProperty('stupidclown.visible', false);
			setProperty('stupiderp.visible', false);
			setProperty('stupidsmiler.visible', false);
			setProperty('stupidstair.visible', false);
	end	
 

		if value1 == 'clown' then

			setProperty('stupidclown.visible', true);
			setProperty('stupiderp.visible', false);
			setProperty('stupidsmiler.visible', false);
			setProperty('stupidstair.visible', false);										
										
		end

				if value1 == 'derp' then

			setProperty('stupidclown.visible', false);
			setProperty('stupiderp.visible', true);
			setProperty('stupidsmiler.visible', false);
			setProperty('stupidstair.visible', false);										
										
		end

				if value1 == 'smiler' then

			setProperty('stupidclown.visible', false);
			setProperty('stupiderp.visible', false);
			setProperty('stupidsmiler.visible', true);
			setProperty('stupidstair.visible', false);										
										
		end

				if value1 == 'stair' then

			setProperty('stupidclown.visible', false);
			setProperty('stupiderp.visible', false);
			setProperty('stupidsmiler.visible', false);
			setProperty('stupidstair.visible', true);										
										
		end
				if value1 == 'todos' then

			setProperty('stupidclown.visible', true);
			setProperty('stupiderp.visible', true);
			setProperty('stupidsmiler.visible', true);
			setProperty('stupidstair.visible', true);
			doTweenAngle('stupidstair', 'stupidstair' , 30000 , 222, circInOut);	
			doTweenAngle('stupidsmiler', 'stupidsmiler' , 30000 , 222, circInOut);
			doTweenAngle('stupiderp', 'stupiderp' , 30000 , 222, circInOut);
			doTweenAngle('stupidclown', 'stupidclown' , 30000 , 222, circInOut);
			doTweenAngle('stupidclow', 'dad' , 30000 , 222, circInOut);	
			doTweenAngle('stupidclownc', 'boyfriend' , 30000 , 222, circInOut);				
		end
	end
end
