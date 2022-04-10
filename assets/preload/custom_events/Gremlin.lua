function onEvent(hpToTake, duration, value1) 
    value1 = duration
    interupt = false
    grabbed = true
    
    if downscroll == true then
        setProperty('HPGremlin.flipY', true)
        gremlinflip = getProperty('HPGremlin.y') - 150
        setProperty('HPGremlin.y', gremlinflip)
    end
    addLuaSprite('HPGremlin', true)
    setPropertyLuaSprite('HPGremlin', 'alpha', 0)
    setLuaSpriteCamera('HPGremlin', 'camHUD')
    startHealth = getProperty('health')
    toHealth = (hpToTake / 100) * startHealth
    --debugPrint('tohealth = ', toHealth)
    perc = toHealth / 2 * 100
    --debugPrint('perc = ', perc)
    onc = false

    setPropertyLuaSprite('HPGremlin', 'alpha', 1)
    playSound('GremlinWoosh')
    luaSpritePlayAnimation('HPGremlin', 'come')
    runTimer('gremlingrab', 0.14, 1)
    
end