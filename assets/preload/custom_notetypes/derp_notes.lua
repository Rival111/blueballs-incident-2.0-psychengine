function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'derp_notes' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'derp_notes'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'derp_notes' then
function goodNoteHit()
	  health = getProperty('health')
    setProperty('health', health- 0.011);
    runTimer('hpdrain', 10, 0);
end
end end 


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Cancelhpdrain' then
       removeProperty('health')
end end