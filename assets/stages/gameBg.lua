function onCreate()
	-- background shit
	makeLuaSprite('GameBg', 'GameBg', -400, -100);
	scaleObject('GameBg', 1.6, 1.2);
	addLuaSprite('GameBg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end