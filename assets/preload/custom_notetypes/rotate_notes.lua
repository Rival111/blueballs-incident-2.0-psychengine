local defaultNotePos = {};
local spin = false;
local arrowMoveX = 0;
local arrowMoveY = 0;

function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')

        y = getPropertyFromGroup('strumLineNotes', i, 'y')

        table.insert(defaultNotePos, {x,y})
    end
end 


function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'rotate_notes' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'gf_notes'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end 
	end
end


function opponentNoteHit(id, noteData, noteType, isSustainNote)
		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'singLEFT-alt';
		elseif noteData == 1 then
			animToPlay = 'singDOWN-alt';
		elseif noteData == 2 then
			animToPlay = 'singUP-alt';
		elseif noteData == 3 then
			animToPlay = 'singRIGHT-alt';
		end

    	if noteType == 'rotate_notes' then
		characterPlayAnim('dad', animToPlay, true);
		setProperty('dad.specialAnim', true);
		triggerEvent('FlashX', '', '');
end
 end  


function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'rotate_notes' then
		for i = 4,7 do 
			setPropertyFromGroup('strumLineNotes', i, 'x', 
			defaultNotePos[i + 1][1] + math.floor(math.random(-150,150)))
	
			if downscroll == true then 
				ylowest = 50;
				yhighest = -150;
			else 
				ylowest = -150
				yhighest = 150;
			end
	
			setPropertyFromGroup('strumLineNotes', i, 'y', 
			defaultNotePos[i + 1][2] + math.floor(math.random(ylowest,yhighest)))
		end
	end
end 	