function onEvent(name,value1,value2)

    if name == "Set Cam ZoomEx" then
        
        doTweenZoom('zoom', 'camGame', value1, value2, 'linear')
        if not value1 == '' then
            setProperty("camGame.zoom",value1) 
	end
            
    end


end








--creadoporelpapuasbelsen