function onCreate()
	-- background shit
	makeLuaSprite('bg', 'exe/curse/background', -800, -750);
	scaleObject('bg', 1.5, 1.5);

	makeLuaSprite('treesfarback', 'exe/curse/treesfarback', -800, -350);
	scaleObject('treesfarback', 1.5, 1.5);

	makeLuaSprite('trees', 'exe/curse/treesback', -800, -350);
	scaleObject('trees', 1.5, 1.5);
	
	makeLuaSprite('floor', 'exe/curse/floor', -800, 650);
	setLuaSpriteScrollFactor('floor', 1, 1);
	scaleObject('floor', 1.5, 1.5);

    makeAnimatedLuaSprite('fountain', 'exe/curse/goofyahfountain', 150, 0);
	addAnimationByPrefix('fountain', 'idle', 'fountainlol', 14, true);
	scaleObject('fountain', 1.5, 1.5);

    makeAnimatedLuaSprite('static', 'exe/curse/staticCurse', -750, -300);
	addAnimationByPrefix('static', 'idle', 'menuSTATICNEW instance 1', 24, true);
	scaleObject('static', 2, 2);

	makeAnimatedLuaSprite('titlecard', 'exe/openings/malediction_title_card', 0, 0);
	addAnimationByPrefix('titlecard', 'end', 'malediction_title', 24, false);
	setObjectCamera('titlecard', 'other')
	screenCenter('titlecard', 'xy')
	--scaleObject('static', 2, 2);


	addLuaSprite('bg', false);
	addLuaSprite('treesfarback', false);
	addLuaSprite('trees', false);
	addLuaSprite('fountain', false);
	addLuaSprite('floor', false);
	addLuaSprite('titlecard', true);
end