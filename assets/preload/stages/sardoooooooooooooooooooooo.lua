function onCreate()

    addCharacterToList('smilerblue', 'dad')
    addCharacterToList('smilerred', 'dad') 
    addCharacterToList('bf_smilerb', 'boyfriend') 
    addCharacterToList('bf_smilerr', 'boyfriend') 
    addCharacterToList('gf_smilerr', 'gf') 
    addCharacterToList('gf_smilerb', 'gf')    

	makeLuaSprite('Smiler_Background_1_BLUE', 'Smiler_Background_1_BLUE', -500, -160);
	addLuaSprite('Smiler_Background_1_BLUE', 'Smiler_Background_1_BLUE', -500, -160);
    scaleObject('Smiler_Background_1_BLUE', 2, 2)  

    makeAnimatedLuaSprite('TvShit_BLUE', 'TvShit_BLUE', -220, 350);
    addAnimationByPrefix('TvShit_BLUE', 'TvShit_BLUE', 'TvShit_BLUE', 24, true);  
    objectPlayAnimation('TvShit_BLUE', 'TvShit_BLUE', true)
    addLuaSprite('TvShit_BLUE', false);

	makeLuaSprite('Smiler_Background_1_RED', 'Smiler_Background_1_RED', -500, -160);
	addLuaSprite('Smiler_Background_1_RED', 'Smiler_Background_1_RED', -500, -160);
    scaleObject('Smiler_Background_1_RED', 2, 2)
    addLuaSprite('TvShit_BLUE', false);  

    makeAnimatedLuaSprite('TvShit_RED', 'TvShit_RED', -220, 350);
    addAnimationByPrefix('TvShit_RED', 'TvShit_RED', 'TvShit_RED', 24, true);  
    objectPlayAnimation('TvShit_RED', 'TvShit_RED', true)
    addLuaSprite('TvShit_RED', false);

	makeLuaSprite('Smiler_Background_1', 'Smiler_Background_1', -500, -160);
	addLuaSprite('Smiler_Background_1', 'Smiler_Background_1', -500, -160);
    scaleObject('Smiler_Background_1', 2, 2)  

    makeAnimatedLuaSprite('TvShit', 'TvShit', -220, 350);
    addAnimationByPrefix('TvShit', 'TvShit', 'TvShit', 24, true);  
    objectPlayAnimation('TvShit', 'TvShit', true)
    addLuaSprite('TvShit', false);

    makeLuaSprite('Smiler_Background_2', 'Smiler_Background_2', -500, -160);
    addLuaSprite('Smiler_Background_2', true);
    scaleObject('Smiler_Background_2', 2, 2)     

if lowQuality then

	makeLuaSprite('Smiler_Background_1', 'Smiler_Background_1', -500, -160);
	addLuaSprite('Smiler_Background_1', 'Smiler_Background_1', -500, -160);
    scaleObject('Smiler_Background_1', 2, 2)  

    makeAnimatedLuaSprite('TvShit', 'TvShit', -220, 350);
    addAnimationByPrefix('TvShit', 'TvShit', 'TvShit', 24, true);  
    objectPlayAnimation('TvShit', 'TvShit', true)
    addLuaSprite('TvShit', false);

    makeLuaSprite('Smiler_Background_2', 'Smiler_Background_2', -500, -160);
    addLuaSprite('Smiler_Background_2', true);
    scaleObject('Smiler_Background_2', 2, 2)     		

end end 
function onEvent(name,value1,value2)

	if name == 'Play Animation' then 

			if value2 == 'normal' then

			setProperty('Smiler_Background_1_BLUE.visible', false);			
			setProperty('TvShit_BLUE.visible', false);
			setProperty('Smiler_Background_1_RED.visible', false);
			setProperty('TvShit_RED.visible', false);
			setProperty('Smiler_Background_1.visible', true);
			setProperty('TvShit.visible', true);
			setProperty('Smiler_Background_2.visible', true);
			triggerEvent('Change Character', 'dad', 'smiler');
			triggerEvent('Change Character', 'gf', 'gf_smiler');
			triggerEvent('Change Character', 'bf', 'bf_smiler');	
	end	
 

		if value1 == 'blue' then

			setProperty('Smiler_Background_1_BLUE.visible', true);			
			setProperty('TvShit_BLUE.visible', true);
			setProperty('Smiler_Background_1_RED.visible', false);
			setProperty('TvShit_RED.visible', false);
			setProperty('Smiler_Background_1.visible', false);
			setProperty('TvShit.visible', false);
			setProperty('Smiler_Background_2.visible', true);	
			triggerEvent('Change Character', 'dad', 'smilerblue');
			triggerEvent('Change Character', 'gf', 'gf_smilerb');
			triggerEvent('Change Character', 'bf', 'bf_smilerb');		

	end 		

		if value1 == 'red' then

			setProperty('Smiler_Background_1_BLUE.visible', false);			
			setProperty('TvShit_BLUE.visible', false);
			setProperty('Smiler_Background_1_RED.visible', true);
			setProperty('TvShit_RED.visible', true);
			setProperty('Smiler_Background_1.visible', false);
			setProperty('TvShit.visible', false);
			setProperty('Smiler_Background_2.visible', true);	
			triggerEvent('Change Character', 'dad', 'smilerred');
			triggerEvent('Change Character', 'gf', 'gf_smilerr');
			triggerEvent('Change Character', 'bf', 'bf_smilerr');														
		end
	end
end

