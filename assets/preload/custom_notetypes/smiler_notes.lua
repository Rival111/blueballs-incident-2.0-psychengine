function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'smiler_notes' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'smiler_notes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end

local healthDrain = 0;
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'smiler_notes' then
		healthDrain = healthDrain + 0.43;
	end
end


function onUpdate(elapsed)
	if healthDrain > 0 then
		healthDrain = healthDrain - 0.29 * elapsed;
		setProperty('health', getProperty('health') - 0.29 * elapsed);
		if healthDrain < 0.1 then
			healthDrain = 0;
		end
	end
end


function opponentNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'smiler_notes' then
	triggerEvent('Screen Shake', '0.35, 0.01', '0, 0');
end end 	