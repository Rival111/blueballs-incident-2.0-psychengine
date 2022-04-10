function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'paliaso_notes' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'paliaso_notes'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == "paliaso_notes" then
		setProperty('health', getProperty('health')-0.4);
		makeLuaSprite('payasotf', 'payasotf', 0, 0);
		setObjectCamera('payasotf', 'hud');
        addLuaSprite('payasotf', false);
        scaleObject('payasotf', 1, 1)		
		runTimer('wait', 1.5);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		removeLuaSprite('payasotf', true);
	end
end
