function onCreate()

	makeLuaSprite('ohyeah', 'ohyeah', -500, -160);
	addLuaSprite('ohyeah', 'ohyeah', -500, -160);
    scaleObject('ohyeah', 1, 1) 

    makeLuaSprite('tanap', 'tanap', -500, -160);
	addLuaSprite('tanap', 'tanap', -500, -160);
    scaleObject('tanap', 2, 2)  

	makeLuaSprite('stb', 'stb', -1119, -638);
	addLuaSprite('stb', false);
    scaleObject('stb', 2, 2)   

	makeLuaSprite('cielo', 'cielo', -1427, -720);
	addLuaSprite('cielo', false);
    scaleObject('cielo', 2, 2)

    makeAnimatedLuaSprite('carro2', 'carro2', -189, 468);
    addAnimationByPrefix('carro2', 'carro2', 'carro2', 24, true);  
    objectPlayAnimation('carro2', 'carro2', true)
    addLuaSprite('carro2', false);

    makeAnimatedLuaSprite('hach', 'hach', 433, 20);
    addAnimationByPrefix('hach', 'hach', 'hach', 24, true);  
    objectPlayAnimation('hach', 'hach', true)
    addLuaSprite('hach', false);

    makeAnimatedLuaSprite('carro1', 'carro1', -1407, 713);
    addAnimationByPrefix('carro1', 'carro1', 'carro1', 24, true);  
    objectPlayAnimation('carro1', 'carro1', true)
    scaleObject('carro1', 4, 4)
    addLuaSprite('carro1', false);

  	makeLuaSprite('niggggnoesciertoeshumornomefunenmeencantaelfutbol', 'niggggnoesciertoeshumornomefunenmeencantaelfutbol', -1119, -638);
	addLuaSprite('niggggnoesciertoeshumornomefunenmeencantaelfutbol', false);
    scaleObject('niggggnoesciertoeshumornomefunenmeencantaelfutbol', 19, 19)   

end 
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 

			if value1 == 'stage' then

			setProperty('niggggnoesciertoeshumornomefunenmeencantaelfutbol.visible', false); --left
			setProperty('stb.visible', true);
			setProperty('ohyeah.visible', false);			
			setProperty('cielo.visible', false);
			setProperty('tanap.visible', false);
			setProperty('carro1.visible', false);
			setProperty('carro2.visible', false);
			setProperty('hach.visible', false);
			triggerEvent('Change Character', 'dad', 'gft2');
			triggerEvent('Change Character', 'bf', 'bf_crazy2');
			triggerEvent('FlashX', '1', '1');		
	end	
 

		if value1 == 'mom' then

			setProperty('niggggnoesciertoeshumornomefunenmeencantaelfutbol.visible', false); --right
			setProperty('stb.visible', false);	
			setProperty('ohyeah.visible', false);		
			setProperty('cielo.visible', true);
			setProperty('carro1.visible', true);
			setProperty('carro2.visible', true);
			setProperty('tanap.visible', false);
			setProperty('hach.visible', true);
			triggerEvent('Change Character', 'dad', 'gft3');
			triggerEvent('Change Character', 'bf', 'bf_crazy3');	
			triggerEvent('FlashX', '1', '1');	
		end								
									

			if value1 == 'piano' then

			setProperty('niggggnoesciertoeshumornomefunenmeencantaelfutbol.visible', false); --up
			setProperty('stb.visible', false);
			setProperty('ohyeah.visible', false);			
			setProperty('cielo.visible', false);
			setProperty('carro1.visible', false);
			setProperty('carro2.visible', false);
			setProperty('tanap.visible', true);
			setProperty('Pianist_curtains.visible', true);
			setProperty('hach.visible', false);
			triggerEvent('Change Character', 'dad', 'gft4');
			triggerEvent('Change Character', 'bf', 'bf_crazy4');
			triggerEvent('FlashX', '1', '1');		
		end		

			if value1 == 'siu' then

			setProperty('niggggnoesciertoeshumornomefunenmeencantaelfutbol.visible', false); --down
			setProperty('stb.visible', false);
			setProperty('ohyeah.visible', true);			
			setProperty('cielo.visible', false);
			setProperty('carro1.visible', false);
			setProperty('carro2.visible', false);
			setProperty('tanap.visible', false);
			setProperty('hach.visible', false);
			triggerEvent('Change Character', 'dad', 'gft5');
			triggerEvent('Change Character', 'bf', 'bf_crazy5');
			triggerEvent('FlashX', '1', '1');							
					
		end
	
end	 end 