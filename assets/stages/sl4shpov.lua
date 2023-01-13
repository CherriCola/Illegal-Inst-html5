function onCreate()

	makeLuaSprite('SlashBackgroundPOV', 'sl4sh/SlashBackgroundPOV', 0, 0);
	setLuaSpriteScrollFactor('SlashBackgroundPOV', 0.9, 0.9);
	scaleObject('SlashBackgroundPOV', 5.5, 5.5);
	setProperty('SlashBackgroundPOV.antialiasing', false);
	addLuaSprite('SlashBackgroundPOV', false);
	
	makeLuaSprite('SlashFloorPOV', 'sl4sh/SlashFloorPOV', 0, 182);
	setLuaSpriteScrollFactor('SlashFloorPOV', 1, 1);
	scaleObject('SlashFloorPOV', 5.5, 5.5);
	setProperty('SlashFloorPOV.antialiasing', false);
	addLuaSprite('SlashFloorPOV', false);

end