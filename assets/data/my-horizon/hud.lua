function onCreate() --script originally by Peeter100, modified by FellowIdiot
	if not lowQuality then --ik full well this causes lag, so...
		setProperty('timeTxt.visible', false);
		setProperty('timeBar.visible', false);
		setProperty('timeBarBG.visible', false);
		setProperty('scoreTxt.visible', false);
		setProperty('rating.visible', false);

		if not downscroll then
			makeLuaSprite('sonicUIscore', 'sonicUI/chaotix/score', 15, 670);
			makeLuaSprite('sonicUItime', 'sonicUI/chaotix/time', 15, 625);
			makeLuaSprite('sonicUImisses', 'sonicUI/chaotix/misses', 15, 580);

			--makeLuaSprite('sonicUIfc', 'sonicUI/chaotix/fc/SFC', 250, 580);	

			makeLuaText('sonicUImissesText', '0', 500, 180, 572.5); --578
			makeLuaText('sonicUItimeText', '0:00', 500, 135, 617.5); --623
			makeLuaText('sonicUIscoreText', '000000', 500, 155, 662.5); --668
		else
			makeLuaSprite('sonicUIscore', 'sonicUI/chaotix/score', 15, 10);
			makeLuaSprite('sonicUItime', 'sonicUI/chaotix/time', 15, 55);
			makeLuaSprite('sonicUImisses', 'sonicUI/chaotix/misses', 15, 100);

			
			makeLuaText('sonicUIscoreText', '000000', 500, 150, 2.5); --8
			makeLuaText('sonicUItimeText', '0:00', 500, 130, 47.5); --53
			makeLuaText('sonicUImissesText', '0', 500, 175, 92.5); --98
		end
		
		scaleObject('sonicUIscore', 3, 3);
		setProperty('sonicUIscore.antialiasing', false);
		setObjectCamera('sonicUIscore', 'hud');
		addLuaSprite('sonicUIscore', true);

		--[[scaleObject('sonicUIfc', 3, 3);
		setProperty('sonicUIfc.antialiasing', false);
		setObjectCamera('sonicUIfc', 'hud');
		addLuaSprite('sonicUIfc', true);--]]
		
		scaleObject('sonicUItime', 3, 3);
		setProperty('sonicUItime.antialiasing', false);
		setObjectCamera('sonicUItime', 'hud');
		addLuaSprite('sonicUItime', true);
		
		scaleObject('sonicUImisses', 3, 3);
		setProperty('sonicUImisses.antialiasing', false);
		setObjectCamera('sonicUImisses', 'hud');
		addLuaSprite('sonicUImisses', true);
		
		setProperty('healthBar.x', getProperty('healthBar.x') + 135);
	end
end

function onUpdate(elapsed)
	if not lowQuality then
		-- yoinked from source code
		local curTime = (getPropertyFromClass('Conductor', 'songPosition') - getPropertyFromClass('ClientPrefs', 'noteOffset'));
		if curTime < 0 then curTime = 0 end
		local timeSeconds = math.floor(curTime / 1000);
		local timeMinutes = math.floor(timeSeconds / 60);
		local timeMS = math.floor(curTime / 10);
		timeSeconds = timeSeconds - (timeMinutes * 60);
		timeMS = timeMS - (timeSeconds * 100) - (timeMinutes * 6000);
		if timeSeconds < 10 then timeSeconds = '0' .. timeSeconds end
		if timeMS < 10 then timeMS = '0' .. timeMS end
		local formattedTime = timeMinutes .. "' " .. timeSeconds .. '" ' .. timeMS;
		
		local formattedScore = getProperty('songScore');
		if string.len(tostring(getProperty('songScore'))) == 1 then
			formattedScore = '000000';
		elseif string.len(tostring(getProperty('songScore'))) == 3 then
			formattedScore = '000' .. getProperty('songScore');
		elseif string.len(tostring(getProperty('songScore'))) == 4 then
			formattedScore = '00' .. getProperty('songScore');
		elseif string.len(tostring(getProperty('songScore'))) == 5 then
			formattedScore = '0' .. getProperty('songScore');
		end
		if not downscroll then
			if ratingFC == "SFC" then
				makeLuaSprite('sonicUIfc', 'sonicUI/chaotix/fc/SFC', 250, 580);	
			elseif ratingFC == "GFC" then
				makeLuaSprite('sonicUIfc', 'sonicUI/chaotix/fc/GFC', 250, 580);	
			elseif ratingFC == "FC" then
				makeLuaSprite('sonicUIfc', 'sonicUI/chaotix/fc/FC', 250, 580);	
			elseif ratingFC == "SDCB" then
				makeLuaSprite('sonicUIfc', 'sonicUI/chaotix/fc/SDCB', 250, 580);	
			elseif ratingFC == "Clear" then
				removeLuaSprite('sonicUIfc');	
			end
		else
			if ratingFC == "SFC" then
				makeLuaSprite('sonicUIfc', 'sonicUI/chaotix/fc/SFC', 250, 100);	
			elseif ratingFC == "GFC" then
				makeLuaSprite('sonicUIfc', 'sonicUI/chaotix/fc/GFC', 250, 100);	
			elseif ratingFC == "FC" then
				makeLuaSprite('sonicUIfc', 'sonicUI/chaotix/fc/FC', 250, 100);	
			elseif ratingFC == "SDCB" then
				makeLuaSprite('sonicUIfc', 'sonicUI/chaotix/fc/SDCB', 250, 100);	
			elseif ratingFC == "Clear" then
				removeLuaSprite('sonicUIfc');	
			end
		end

		scaleObject('sonicUIfc', 3, 3);
		setProperty('sonicUIfc.antialiasing', false);
		setObjectCamera('sonicUIfc', 'hud');
		addLuaSprite('sonicUIfc', true);
		
		setTextString('sonicUImissesText', getProperty('songMisses'));
		setTextString('sonicUItimeText', formattedTime);
		setTextString('sonicUIscoreText', formattedScore);
		
		
		setTextFont('sonicUImissesText', 'chaotix.ttf');
		setTextSize('sonicUImissesText', 85.25); --40
		addLuaText('sonicUImissesText');
		setTextAlignment('sonicUImissesText', 'left');
		setObjectCamera("sonicUImissesText", 'hud');
		
		setTextFont('sonicUItimeText', 'chaotix.ttf');
		setTextSize('sonicUItimeText', 85.25); --40
		addLuaText('sonicUItimeText');
		setTextAlignment('sonicUItimeText', 'left');
		setObjectCamera("sonicUItimeText", 'hud');
		
		setTextFont('sonicUIscoreText', 'chaotix.ttf');
		setTextSize('sonicUIscoreText', 85.25); --40
		addLuaText('sonicUIscoreText');
		setTextAlignment('sonicUIscoreText', 'left');
		setObjectCamera("sonicUIscoreText", 'hud');
		if inGameOver then
			removeLuaSprite('sonicUIfc')
		end
	end
end