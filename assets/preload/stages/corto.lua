function onCreate()

    addCharacterToList('1tr', 'dad')
	addCharacterToList('2tr', 'dad')
    addCharacterToList('3tr', 'dad') 
    addCharacterToList('4tr', 'dad')  
    addCharacterToList('bfchikito', 'boyfriend') 
    addCharacterToList('bfchikito2', 'boyfriend') 
    addCharacterToList('Boyfriend_333', 'boyfriend') 

  	makeLuaSprite('test', 'test', -200, 360);
	addLuaSprite('test', false); 
    scaleObject('test', 25, 25)

	makeAnimatedLuaSprite('noise', 'noise', -500, -160);
    scaleObject('noise', 4, 4)
    addAnimationByPrefix('noise', 'noise', 'noise', 24, true);  
    objectPlayAnimation('noise', 'noise', true)
  	addLuaSprite('noise', false);

  	makeLuaSprite('shading1', 'shading1', -200, 360);
	addLuaSprite('shading1', false); 
    scaleObject('shading1', 2.5, 2.5)

  	makeLuaSprite('niggggnoesciertoeshumornomefunenmeencantaelfutbol', 'niggggnoesciertoeshumornomefunenmeencantaelfutbol', -1119, -638);
	addLuaSprite('niggggnoesciertoeshumornomefunenmeencantaelfutbol', false);
    scaleObject('niggggnoesciertoeshumornomefunenmeencantaelfutbol', 19, 19)   

    makeLuaSprite('3w2', '3w2', 20, 20);
	addLuaSprite('3w2', '3w2', -300, -160);
    scaleObject('3w2', 1, 1)
    setObjectCamera('3w2', 'hud')

    makeLuaSprite('M1', 'M1', -500, -160);
	addLuaSprite('M1', 'M1', -300, -160);
    scaleObject('M1', 2, 2)

end 

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 

			if value1 == 'fase2' then
			setProperty('M1.visible', false);
			setProperty('test.visible', false);
			setProperty('shading1.visible', true);
			setProperty('niggggnoesciertoeshumornomefunenmeencantaelfutbol.visible', false);
			setProperty('noise.visible', true);
			triggerEvent('Change Character', 'dad', '2tr');
			triggerEvent('Change Character', 'bf', 'bfchikito');
			triggerEvent('Set Cam Zoom', '0.5', '');
			triggerEvent('Camera Follow Pos', '1700', '1200');
		end	

 

			if value1 == 'fase1' then
			setProperty('M1.visible', true);
			setProperty('test.visible', false);
			setProperty('shading1.visible', false);
			setProperty('niggggnoesciertoeshumornomefunenmeencantaelfutbol.visible', false);
			setProperty('noise.visible', false);
			triggerEvent('Change Character', 'dad', '1tr');
			triggerEvent('Change Character', 'bf', '333_bf1');
			triggerEvent('Set Cam Zoom', '0.7', '');
	 		triggerEvent('Camera Follow Pos', '', '');
	   end	

			if value1 == 'ojos' then
			setProperty('M1.visible', false);
			setProperty('test.visible', false);
			setProperty('shading1.visible', false);
			setProperty('niggggnoesciertoeshumornomefunenmeencantaelfutbol.visible', true);
			setProperty('noise.visible', false);
			triggerEvent('Change Character', 'dad', 'no');
			triggerEvent('Change Character', 'bf', 'bfchikito3');
			triggerEvent('Set Cam Zoom', '0.5', '');
			triggerEvent('Camera Follow Pos', '1700', '1200');
	   end	
									

			if value1 == 'fase3' then
			setProperty('M1.visible', false);
			setProperty('test.visible', false);
			setProperty('shading1.visible', false);
			setProperty('niggggnoesciertoeshumornomefunenmeencantaelfutbol.visible', false);
			setProperty('noise.visible', true);
			triggerEvent('Change Character', 'dad', '3tr');
			triggerEvent('Change Character', 'bf', 'bfchikito2');
			triggerEvent('Set Cam Zoom', '0.5', '');
			triggerEvent('Camera Follow Pos', '1700', '1200');
	   end	

			if value1 == 'fase4' then
			setProperty('M1.visible', false);
			setProperty('test.visible', true);
			setProperty('shading1.visible', false);
			setProperty('niggggnoesciertoeshumornomefunenmeencantaelfutbol.visible', false);
			setProperty('noise.visible', false);
			triggerEvent('Change Character', 'dad', '4tr');
			triggerEvent('Change Character', 'bf', 'no');
			triggerEvent('Set Cam Zoom', '0.5', '');
			triggerEvent('Camera Follow Pos', '1700', '1200');
      end  
   end
end 

