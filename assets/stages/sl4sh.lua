function onCreate()

	makeLuaSprite('SlashBackgroundPOV', 'sl4sh/SlashBackgroundPOV', 0, 0);
	setLuaSpriteScrollFactor('SlashBackgroundPOV', 0.9, 0.9);
	scaleObject('SlashBackgroundPOV', 5.5, 5.5);
	setProperty('SlashBackgroundPOV.antialiasing', false);
	setProperty('SlashBackgroundPOV.visible', false);
	addLuaSprite('SlashBackgroundPOV', false);
	
	makeLuaSprite('SlashFloorPOV', 'sl4sh/SlashFloorPOV', 0, 182);
	setLuaSpriteScrollFactor('SlashFloorPOV', 1, 1);
	scaleObject('SlashFloorPOV', 5.5, 5.5);
	setProperty('SlashFloorPOV.antialiasing', false);
	setProperty('SlashFloorPOV.visible', false);
	addLuaSprite('SlashFloorPOV', false);

	makeLuaSprite('SlashBackground', 'sl4sh/SlashBackground', 0, 0);
	setLuaSpriteScrollFactor('SlashBackground', 0.9, 0.9);
	scaleObject('SlashBackground', 5.5, 5.5);
	setProperty('SlashBackground.antialiasing', false);
	addLuaSprite('SlashBackground', false);
	
	makeLuaSprite('SlashFloor', 'sl4sh/SlashFloor', 0, 182);
	setLuaSpriteScrollFactor('SlashFloor', 1, 1);
	scaleObject('SlashFloor', 5.5, 5.5);
	setProperty('SlashFloor.antialiasing', false);
	addLuaSprite('SlashFloor', false);

end