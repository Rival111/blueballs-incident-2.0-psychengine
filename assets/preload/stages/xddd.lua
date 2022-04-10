function onCreate()

    makeAnimatedLuaSprite('Rio', 'Rio', -500, -300);
    scaleObject('Rio', 7, 7)
    addAnimationByPrefix('Rio', 'Rio', 'Rio', 24, true);  
    objectPlayAnimation('Rio', 'Rio', true)
  	addLuaSprite('Rio', false);

  	makeLuaSprite('box', 'box', 2100, 1080);
	addLuaSprite('box', false);
    scaleObject('box', 2, 2)  

    makeLuaSprite('pin', 'pin', 350, 980);
    setProperty('pin.flipX', true);
	addLuaSprite('pin', false);
    scaleObject('pin', 2, 2)  

    makeAnimatedLuaSprite('noise', 'noise', -400, -160);
    scaleObject('noise', 2, 2)
    addAnimationByPrefix('noise', 'noise', 'noise', 24, true);  
    objectPlayAnimation('noise', 'noise', true)
  	addLuaSprite('noise', false);

	makeLuaSprite('Pianist_stage', 'Pianist_stage', -500, -160);
	addLuaSprite('Pianist_stage', 'Pianist_stage', -500, -160);
    scaleObject('Pianist_stage', 2, 2)  

    makeLuaSprite('Pianist_curtains', 'Pianist_curtains', -500, -160);
    addLuaSprite('Pianist_curtains', true);
    scaleObject('Pianist_curtains', 2, 2)    

end 
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 

			if value1 == 'estatica' then

			setProperty('Pianist_stage.visible', false);
			setProperty('Pianist_curtains.visible', false);
			setProperty('overlai.visible', false);	
            setProperty('noise.visible', true);	
			setProperty('Rio.visible', false);					
	end	
 

		if value1 == 'final' then

			setProperty('Pianist_stage.visible', false);
			setProperty('Pianist_curtains.visible', false);
			setProperty('overlai.visible', false);	
			setProperty('noise.visible', false);
			setProperty('Rio.visible', true);												
										
		end
	end
end
