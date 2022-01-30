function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Static Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
			
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

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Static Note' then
makeLuaSprite('image', 'sabotage/red', 0, 0);
addLuaSprite('image', true);
doTweenAlpha('hello', 'image', 1, 0.3, 'linear');
setObjectCamera('image', 'other');
runTimer('wait', 0.3);
end
end

function noteMiss(id, noteData, noteType, isSustainNote)
if noteType == 'Static Note' then
makeLuaSprite('image', 'sabotage/red', 0, 0);
addLuaSprite('image', true);
doTweenAlpha('hello', 'image', 1, 0.3, 'linear');
setObjectCamera('image', 'other');
runTimer('wait', 0.3);
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Static Note' then
makeLuaSprite('image', 'sabotage/red', 0, 0);
addLuaSprite('image', true);
doTweenAlpha('hello', 'image', 1, 0.3, 'linear');
setObjectCamera('image', 'other');
runTimer('wait', 0.3);
end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'wait' then
doTweenAlpha('byebye', 'image', 0, 0.3, 'linear');
end
end

function onTweenCompleted(tag)
if tag == 'byebye' then
removeLuaSprite('image', true);
end
end