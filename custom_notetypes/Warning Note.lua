function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Warning Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Notes/NOTE_assets_Task'); --Change texture
			setPropertyFromGroup( 'unspawnNotes',i, 'noteSplashTexture', 'Notes/WarningSplashes');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '500'); --Default value is: 0.0475, health lost on miss

			if getPropertyFromGroup('unspawnNotes', i, 'noteMiss') then --Doesn't let Dad/Opponent notes get ignored

			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Warning Note' then
	characterPlayAnim('boyfriend', 'dodge', true);
	playSound('shoot', 1)
	cameraShake('camGame', 0.01, 0.2)
		-- put something here if you want
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Warning Note' then
	characterPlayAnim('boyfriend', 'hurt', true);
	playSound('shoot', 1)
	cameraShake('camGame', 0.01, 0.2)
		-- put something here if you want
	end
end