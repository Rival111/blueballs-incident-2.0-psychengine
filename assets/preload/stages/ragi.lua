function onCreate()

    makeAnimatedLuaSprite('noise', 'noise', -500, -160);
    scaleObject('noise', 2, 2)
    addAnimationByPrefix('noise', 'noise', 'noise', 24, true);  
    objectPlayAnimation('noise', 'noise', true)
  	addLuaSprite('noise', false);

	makeLuaSprite('BB1', 'BB1', -500, -160);
	addLuaSprite('BB1', 'BB1', -500, -160);
    scaleObject('BB1', 1, 1)  

    makeLuaSprite('foreground2', 'foreground2', -500, -160);
    addLuaSprite('foreground2', true);
    scaleObject('foreground2', 1, 1)    

end 
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 

			if value1 == 'tf' then

			setProperty('BB1.visible', false);
	end	
 

		if value1 == 'normal' then

			setProperty('BB1.visible', true);										
										
		end
	end
end
