function onCreate()
	-- OUR shit
    makeLuaSprite('starline', 'exe/chaotix/new_horizon/starline', -500, -200)
    makeLuaSprite('newfloor', 'exe/chaotix/new_horizon/floor', -500, -200)
    makeLuaSprite('trees1', 'exe/chaotix/new_horizon/trees', -500, -200)
    --setLuaSpriteScrollFactor('trees1', 0.8);
    makeLuaSprite('trees2', 'exe/chaotix/new_horizon/trees2', -500, -200)
    setLuaSpriteScrollFactor('trees2', 0.8);
    --scaleObject('starline', 0.514, 0.514);
    makeAnimatedLuaSprite('vectorHD', 'exe/chaotix/new_horizon/vector_bopper', 770, 500) --DIRECTION AND MAGNITUDE OH YEAH
    addAnimationByPrefix('vectorHD', 'idle', 'vector bopper', 24, false)
	scaleObject('vectorHD', 0.7, 0.7);

    makeAnimatedLuaSprite('knucklesHD', 'exe/chaotix/new_horizon/knuckles_bopper', -50, 550) --DIRECTION AND MAGNITUDE OH YEAH
    addAnimationByPrefix('knucklesHD', 'idle', 'knuckles bopper', 24, false)
	scaleObject('knucklesHD', 0.7, 0.7);

    makeAnimatedLuaSprite('amyHD', 'exe/chaotix/new_horizon/amy_bopper', 900, 220)
    addAnimationByPrefix('amyHD', 'idle', 'amy bopper', 24, false)
	scaleObject('amyHD', 0.4, 0.4);

    makeAnimatedLuaSprite('mightyHD', 'exe/chaotix/new_horizon/mighty_bopper', 650, 220)
    addAnimationByPrefix('mightyHD', 'idle', 'mighty bopper', 24, false)
	scaleObject('mightyHD', 0.4, 0.4);

    makeAnimatedLuaSprite('charmyHD', 'exe/chaotix/new_horizon/charmy_bopper', 800, 50)
    addAnimationByPrefix('charmyHD', 'idle', 'charmy bopper', 24, false)
	scaleObject('charmyHD', 0.4, 0.4);

    makeAnimatedLuaSprite('espioHD', 'exe/chaotix/new_horizon/espio_bopper', -150, 220)
    addAnimationByPrefix('espioHD', 'idle', 'espio bopper', 24, false)
	scaleObject('espioHD', 0.4, 0.4);

    --pixel shit

    makeLuaSprite('BGPixel', 'exe/chaotix/horizonsky', -1450, -825);
	--setLuaSpriteScrollFactor('bgpixel', 1.2, 0.9);

    makeAnimatedLuaSprite('FuckedupBg', 'exe/chaotix/corrupt_background', -1300, -500);
	addAnimationByPrefix('FuckedupBg', 'idle', 'corrupt background', 24, true);
	scaleObject('FuckedupBg', 1, 1);
    setProperty('FuckedUpBg.visible', 'false')

	makeLuaSprite('FGPixel', 'exe/chaotix/horizonFg', -1450, -825);
	--setLuaSpriteScrollFactor('FGPixel', 1.2, 0.9);

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

    makeAnimatedLuaSprite('GfFake', 'characters/chaotix_gf', 625, 475);
	addAnimationByPrefix('GfFake', 'idle', 'chaotix gf', 24, true);
    scaleObject('GfFake', 6, 6);
    setProperty('GfFake.antialiasing', 'false');

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
    setProperty('blackout.alpha', '0');

    makeLuaSprite('blackout2', "", -1450, -825);
	makeGraphic('blackout2', 4000, 2560, '000000');
    setProperty('blackout2.alpha', '0');

    makeAnimatedLuaSprite('titlecard', 'exe/openings/our-horizon_title_card', 0, 0);
	addAnimationByPrefix('titlecard', 'end', 'our-horizon_title', 24, false);
	setObjectCamera('titlecard', 'other')
	screenCenter('titlecard', 'xy')

    --HD
    addLuaSprite('starline', false);
    addLuaSprite('newfloor', false);
    addLuaSprite('trees1', false);
    addLuaSprite('trees2', true);
    addLuaSprite('vectorHD', true)
    addLuaSprite('knucklesHD', true)
    addLuaSprite('charmyHD', false)
    addLuaSprite('mightyHD', false)
    addLuaSprite('amyHD', false)
    addLuaSprite('espioHD', false)
    --pixel
    -- [[
	addLuaSprite('BGPixel', false);
	addLuaSprite('FGPixel', false);
    addLuaSprite('AmyBg', false);
    addLuaSprite('CharmyBg', false);
    addLuaSprite('MightyBg', false);
    addLuaSprite('EspioBg', false);
    addLuaSprite('KnucklesBg', false);
    addLuaSprite('VectorBg', false);
    --]]
    addLuaSprite('blackout', false);
    --addLuaSprite('GfFake', false);
    addLuaSprite('blackout2', true);
    addLuaSprite('titlecard', true);
end

function onCreatePost() --no countdown
    setProperty('startTimer.finished', true)
end

function onBeatHit()
    objectPlayAnimation('vectorHD', 'idle');
    objectPlayAnimation('knucklesHD', 'idle');
    objectPlayAnimation('charmyHD', 'idle');
    objectPlayAnimation('mightyHD', 'idle');
    objectPlayAnimation('amyHD', 'idle');
    objectPlayAnimation('espioHD', 'idle');

    objectPlayAnimation('VectorBg', 'idle');
    objectPlayAnimation('KnucklesBg', 'idle');
    objectPlayAnimation('CharmyBg', 'idle');
    objectPlayAnimation('MightyBg', 'idle');
    objectPlayAnimation('AmyBg', 'idle');
    objectPlayAnimation('EspioBg', 'idle');
end
