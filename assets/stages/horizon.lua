function onCreate()
	-- background shit
	makeLuaSprite('BGPixel', 'exe/chaotix/horizonsky', -1450, -825);
	--setLuaSpriteScrollFactor('bgpixel', 1.2, 0.9);

    makeAnimatedLuaSprite('FuckedupBg', 'exe/chaotix/corrupt_background', -1300, -500);
	addAnimationByPrefix('FuckedupBg', 'idle', 'corrupt background', 24, true);
	scaleObject('FuckedupBg', 1, 1);
    setProperty('FuckedUpBg.visible', 'false')

	makeLuaSprite('FGPixel', 'exe/chaotix/horizonFg', -1450, -825);
	--setLuaSpriteScrollFactor('FGPixel', 1.2, 0.9);
	
	makeLuaSprite('FuckedupFg', 'exe/chaotix/horizonFuckedUp', -1450, -825);
	setLuaSpriteScrollFactor('FuckedupFg', 1.2, 0.9);
    setProperty('FuckedUpFg.visible', 'false')

    makeAnimatedLuaSprite('AmyBg', 'exe/chaotix/BG_amy', 1105, 425);
	addAnimationByPrefix('AmyBg', 'idle', 'amy bobbing', 24, false);
    addAnimationByPrefix('AmyBg', 'fear', 'amy fear', 24, true);
	scaleObject('AmyBg', 5, 5);
    setProperty('AmyBg.antialiasing', 'false');

    makeAnimatedLuaSprite('CharmyBg', 'exe/chaotix/BG_charmy', 950, 325);
    addAnimationByPrefix('CharmyBg', 'idle', 'charmy bobbing', 24, false);
    addAnimationByPrefix('CharmyBg', 'fear', 'charmy fear', 24, true);
    scaleObject('CharmyBg', 5, 5);
    setProperty('CharmyBg.antialiasing', 'false');

    makeAnimatedLuaSprite('MightyBg', 'exe/chaotix/BG_mighty', 515, 430);
    addAnimationByPrefix('MightyBg', 'idle', 'mighty bobbing', 24, false);
    addAnimationByPrefix('MightyBg', 'fear', 'mighty fear', 24, true);
    scaleObject('MightyBg', 5, 5);
    setProperty('MightyBg.antialiasing', 'false');

    makeAnimatedLuaSprite('EspioBg', 'exe/chaotix/BG_espio', 1310, 445);
    addAnimationByPrefix('EspioBg', 'idle', 'espio bobbing', 24, false);
    addAnimationByPrefix('EspioBg', 'fear', 'espio fear', 24, true);
    scaleObject('EspioBg', 5, 5);
    setProperty('EspioBg.antialiasing', 'false');

    makeAnimatedLuaSprite('KnucklesBg', 'exe/chaotix/BG_knuckles', -55, 395);
	addAnimationByPrefix('KnucklesBg', 'idle', 'knuckles bobbing', 24, false);
    addAnimationByPrefix('KnucklesBg', 'fear', 'knuckles fear', 24, true);
	scaleObject('KnucklesBg', 5.25, 5.25);
    setProperty('KnucklesBg.antialiasing', 'false');

    makeAnimatedLuaSprite('VectorBg', 'exe/chaotix/BG_vector', -225, 405);
	addAnimationByPrefix('VectorBg', 'idle', 'vector bobbing', 24, false);
    addAnimationByPrefix('VectorBg', 'fear', 'vector fear', 24, true);
	scaleObject('VectorBg', 5, 5);
    setProperty('VectorBg.antialiasing', 'false');

    makeLuaSprite('blackout', "", -1450, -825);
	makeGraphic('blackout', 4000, 2560, '000000');
    --setProperty('blackout.visible', false);

    makeAnimatedLuaSprite('titlecard', 'exe/openings/my-horizon_title_card', 0, 0);
	addAnimationByPrefix('titlecard', 'end', 'my-horizon_title', 24, false);
	setObjectCamera('titlecard', 'other')
	screenCenter('titlecard', 'xy')

    addLuaSprite('FuckedupBg', false);
	addLuaSprite('FuckedupFg', false);
	addLuaSprite('BGPixel', false);
	addLuaSprite('FGPixel', false);
    addLuaSprite('AmyBg', false);
    addLuaSprite('CharmyBg', false);
    addLuaSprite('MightyBg', false);
    addLuaSprite('EspioBg', false);
    addLuaSprite('KnucklesBg', false);
    addLuaSprite('VectorBg', false);
    addLuaSprite('blackout', false);
    addLuaSprite('titlecard', true);
end