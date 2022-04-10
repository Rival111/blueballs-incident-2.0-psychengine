function onEvent(name, value1, value2)
if name == 'Fade Ctm' then	
makeLuaSprite('blackscreen', 'blackscreen', -1000, 100)
setObjectCamera('blackscreen', 'game')
addLuaSprite('blackscreen', true)
scaleObject('blackscreen', 35, 35)
runTimer('fadeout', 0.5, 1)
elseif tag == 'fadeout' then
		doTweenAlpha('blackfade', 'blackscreen', 0, 1, 'elasticInOut')
		function onTweenCompleted(tag)
			if tag == 'blackfade' then
				doTweenAlpha('circlefade', 'circle', 0, 1, 'elasticInOut')
				doTweenAlpha('textfade', 'text', 0, 1, 'elasticInOut')
           end 
		end
	end
end