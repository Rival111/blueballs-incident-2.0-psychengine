function onCreate()

    makeLuaSprite('xdd', 'xdd', -500, -160);
    addLuaSprite('xdd', 'xdd', -500, -160);
    scaleObject('xdd', 1, 1)

    makeAnimatedLuaSprite('sheetcity', 'sheetcity', -500, -360);
    scaleObject('sheetcity', 8.4, 8.4)
    addAnimationByPrefix('sheetcity', 'sheetcity', 'sheetcity', 10, true);  
    objectPlayAnimation('sheetcity', 'sheetcity', true)
  	addLuaSprite('sheetcity', false);

    makeLuaSprite('back3', 'back3', -500, -160);
    addLuaSprite('back3', 'back3', -500, -160);
    scaleObject('back3', 1.1, 1.1)  

    makeLuaSprite('back', 'back', -500, -160);
    addLuaSprite('back', 'back', -500, -160);
    scaleObject('back', 1, 1)  

    makeAnimatedLuaSprite('mevengo', 'mevengo', 367, 39);
    scaleObject('mevengo', 2.1, 2.1)
    addAnimationByPrefix('mevengo', 'mevengo', 'mevengo', 10, true);  
    objectPlayAnimation('mevengo', 'mevengo', true)
    addLuaSprite('mevengo', false);

	makeLuaSprite('back0', 'back0', -500, -160);
	addLuaSprite('back0', 'back0', -500, -160);
    scaleObject('back0', 1, 1)  



end 
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 

			if value1 == 'Anima' then

            setProperty('xdd.visible', false);
            setProperty('sheetcity.visible', false);
            setProperty('back3.visible', false);
            setProperty('back.visible', true);
            setProperty('mevengo.visible', true);
			setProperty('back0.visible', false);
	end	
				if value1 == 'back' then

            setProperty('xdd.visible', false);
            setProperty('sheetcity.visible', false);
            setProperty('back3.visible', false);
            setProperty('back.visible', true);
            setProperty('mevengo.visible', false);
			setProperty('back0.visible', false);
	end	
					if value1 == 'city' then

            setProperty('xdd.visible', false);
            setProperty('sheetcity.visible', true);
            setProperty('back3.visible', true);
            setProperty('back.visible', false);
            setProperty('mevengo.visible', false);
			setProperty('back0.visible', false);
				

             if value1 == 'siu' then
            setProperty('xdd.visible', true);
            setProperty('sheetcity.visible', false);
            setProperty('back3.visible', false);
            setProperty('back.visible', false);
            setProperty('mevengo.visible', false);
            setProperty('back0.visible', false);
                                        
        end						
		end
	end
end
