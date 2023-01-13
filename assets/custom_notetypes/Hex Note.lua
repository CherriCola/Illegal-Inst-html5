local hexes = 0;
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Hex Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'HEXNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0.08'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.09'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
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
	if noteType == 'Hex Note' then
		-- put something here if you want
		--setProperty('songMisses', getProperty('songMisses')+1);
		--playSound('nope', 0.5);
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Hex Note' then
		-- put something here if you want
		hexes = getProperty(hexes) + 1;
		cameraFlash('camOther', 'AA0000', 0.35);
		setProperty('vignettelol.alpha', 1)
		--if getRandomInt(1,6) == 1 then 
		if getProperty(hexes) == 1 then  -- yanderedev type shit
			setProperty('wire1.alpha', 1)
			runTimer('wait1', 2.5);

			elseif getProperty(hexes) == 2 then 
			setProperty('wire2.alpha', 1)
			runTimer('wait2', 2.5);

			elseif getProperty(hexes) == 3 then 
			setProperty('wire3.alpha', 1)
			runTimer('wait3', 2.5);	

			elseif getProperty(hexes) == 4 then 
			setProperty('wire4.alpha', 1)
			runTimer('wait4', 2.5);
			
			elseif getProperty(hexes) == 5 then 
			setProperty('wire5.alpha', 1)
			runTimer('wait5', 2.5);
			
			elseif getProperty(hexes) == 6 then 
			setProperty('wire6.alpha', 1)
			runTimer('wait6', 2.5);
		end
		playSound('hitWire', 1);
		if hexes > 6 then
			setProperty('health', 0);
			if getProperty('health') > 0.0 then
				setProperty('health', health- 0.023);
			end
		end
	end
end

function onTimerCompleted(tag, loops, loopsleft) --image fades away until it's opacity is 0
	hexes = getProperty(hexes) - 1;
	if tag == 'wait1' then
		doTweenAlpha('nowire1', 'wire1', 0, 0.8, 'cubeInOut');
	end
	if tag == 'wait2' then
		doTweenAlpha('nowire2', 'wire2', 0, 0.8, 'cubeInOut');
	end
	if tag == 'wait3' then
		doTweenAlpha('nowire3', 'wire3', 0, 0.8, 'cubeInOut');
	end
	if tag == 'wait4' then
		doTweenAlpha('nowire4', 'wire4', 0, 0.8, 'cubeInOut');
	end
	if tag == 'wait5' then
		doTweenAlpha('nowire5', 'wire5', 0, 0.8, 'cubeInOut');
	end
	if tag == 'wait6' then
		doTweenAlpha('nowire6', 'wire6', 0, 0.8, 'cubeInOut');
	end
	doTweenAlpha('novig', 'vignettelol', 0, 0.8, 'cubeInOut');
end

function onTweenCompleted(tag)

end

function onCreatePost()

	makeLuaSprite('vignettelol', 'exe/black_vignette', 0, 0)
	addLuaSprite('vignettelol', true)
	setObjectCamera('vignettelol', 'other')
	setProperty('vignettelol.alpha', 0)
	
	makeLuaSprite('wire1', 'barbedWire/1', 0, 0)
	addLuaSprite('wire1', true)
	setObjectCamera('wire1', 'other')
	setProperty('wire1.alpha', 0)
		
	makeLuaSprite('wire2', 'barbedWire/2', 0, 0)
	addLuaSprite('wire2', true)
	setObjectCamera('wire2', 'other')
	setProperty('wire2.alpha', 0)
		
	makeLuaSprite('wire3', 'barbedWire/3', 0, 0)
	addLuaSprite('wire3', true)
	setObjectCamera('wire3', 'other')
	setProperty('wire3.alpha', 0)
		
	makeLuaSprite('wire4', 'barbedWire/4', 0, 0)
	addLuaSprite('wire4', true)
	setObjectCamera('wire4', 'other')
	setProperty('wire4.alpha', 0)
		
	makeLuaSprite('wire5', 'barbedWire/5', 0, 0)
	addLuaSprite('wire5', true)
	setObjectCamera('wire5', 'other')
	setProperty('wire5.alpha', 0)
	
	makeLuaSprite('wire6', 'barbedWire/6', 0, 0)
	addLuaSprite('wire6', true)
	setObjectCamera('wire6', 'other')
	setProperty('wire6.alpha', 0)
	
end