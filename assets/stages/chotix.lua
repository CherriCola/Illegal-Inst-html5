function onCreate()
    makeLuaSprite('browtf', 'exe/chaotix/hell', -750);

    makeAnimatedLuaSprite('titlecard', 'exe/openings/long-sky_title_card', 0, 0);
	addAnimationByPrefix('titlecard', 'end', 'long-sky_title', 24, false);
	setObjectCamera('titlecard', 'other')
	screenCenter('titlecard', 'xy')

    addLuaSprite('browtf', false);
    addLuaSprite('titlecard', true);
end