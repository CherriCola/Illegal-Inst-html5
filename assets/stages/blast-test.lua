function onCreate()
	makeLuaSprite('bg', 'exe/hog/bg', -900, -190);
	setLuaSpriteScrollFactor('bg', 0.6, 0.6);
	scaleObject('bg', 1.2, 1.2);

	makeLuaSprite('motains', 'exe/hog/motains', -800, -50);
	setLuaSpriteScrollFactor('motains', 1, 1);
	scaleObject('motains', 1.2, 1.2);

	makeAnimatedLuaSprite('HillsandHills', 'exe/hog/HillsandHills', -500, 150);
	setLuaSpriteScrollFactor('HillsandHills', 0.7, 0.7);
	addAnimationByPrefix('HillsandHills', 'HillsandHills', 'DumbassMF', 14, true);
	scaleObject('HillsandHills', 1, 1);

	makeAnimatedLuaSprite('Waterfalls', 'exe/hog/Waterfalls', -950, 150);
	setLuaSpriteScrollFactor('Waterfalls', 0.7, 0.7);
	addAnimationByPrefix('Waterfalls', 'Waterfalls', 'British', 14, true);
	scaleObject('Waterfalls', 0.9, 0.9);

	makeLuaSprite('trees', 'exe/hog/trees', -570, -100);
	setLuaSpriteScrollFactor('trees', 0.8, 0.8);
	scaleObject('trees', 1, 1);
	
	makeLuaSprite('floor', 'exe/hog/floor', -800, 700);
	setLuaSpriteScrollFactor('floor', 1, 1);
	scaleObject('floor', 1.2, 1.2);

	makeLuaSprite('rocks', 'exe/hog/rocks', -680, 575);
	setLuaSpriteScrollFactor('rocks', 0.7, 0.7);
	scaleObject('rocks', 1, 1);

	--blast stuff
	makeLuaSprite('sunset', 'exe/hog/blast/sunset', -900, -190);
	setLuaSpriteScrollFactor('sunset', 0.6, 0.6);
	scaleObject('sunset', 1.2, 1.2);

	makeLuaSprite('blast_mountains', 'exe/hog/blast/Mountains', -800, 50);
	setLuaSpriteScrollFactor('blast_mountains', 1, 1);
	scaleObject('blast_mountains', 1.2, 1.2);

	makeAnimatedLuaSprite('Blast_Waterfalls', 'exe/hog/blast/Waterfalls', -950, 250);
	setLuaSpriteScrollFactor('Blast_Waterfalls', 0.7, 0.7);
	addAnimationByPrefix('Blast_Waterfalls', 'Waterfalls', 'British instance 1', 14, true);
	scaleObject('Blast_Waterfalls', 0.9, 0.9);

	makeLuaSprite('blast_hills', 'exe/hog/blast/Hills', -500, 280);
	setLuaSpriteScrollFactor('blast_hills', 0.7, 0.7);
	scaleObject('blast_hills', 1, 1);

	makeAnimatedLuaSprite('Monitor', 'exe/hog/blast/Monitor', 747, 302);
	setLuaSpriteScrollFactor('Monitor', 0.7, 0.7);
	addAnimationByPrefix('Monitor', 'Monitor', 'Monitor', 14, true);
	addAnimationByPrefix('Monitor', 'FE', 'Fatalerror', 24, true);
	addAnimationByPrefix('Monitor', 'NMI', 'NMI', 24, true);
	addAnimationByPrefix('Monitor', 'Needle', 'Needlemouse', 12, true);
	addAnimationByPrefix('Monitor', 'Starved', 'Storved', 10, true);
	scaleObject('Monitor', 1, 1);

	makeLuaSprite('blast_floor', 'exe/hog/blast/floor', -800, 700);
	setLuaSpriteScrollFactor('blast_floor', 1, 1);
	scaleObject('blast_floor', 1.2, 1.2);

	makeLuaSprite('plants', 'exe/hog/blast/Plants', -770, -100);
	setLuaSpriteScrollFactor('plants', 0.8, 0.8);
	scaleObject('plants', 1.5, 1.5);

	makeLuaSprite('blast_rocks', 'exe/hog/blast/rocks', -680, 575);
	setLuaSpriteScrollFactor('blast_rocks', 0.7, 0.7);
	scaleObject('blast_rocks', 1, 1);

    makeLuaSprite('blackout', "", -1450, -825);
	makeGraphic('blackout', 4000, 2560, '000000');

	makeLuaSprite('vignette', 'exe/black_vignette', 0, 0);
	setObjectCamera('vignette', 'other')
	screenCenter('vignette', 'xy')

	--scorched
	----[[
	setProperty('sunset.alpha', '0');
	setProperty('blast_mountains.alpha', '0');
	setProperty('Blast_Waterfalls.alpha', '0');
	setProperty('blast_hills.alpha', '0');
	setProperty('Monitor.alpha', '0');
	setProperty('blast_floor.alpha', '0');
	setProperty('plants.alpha', '0');
	setProperty('blast_rocks.alpha', '0');
	--]]
	setProperty('blackout.alpha', '0');	
	setProperty('vignette.alpha', '0');

	-- [[
	addLuaSprite('sunset', false);
	addLuaSprite('blast_mountains', false);
	addLuaSprite('Blast_Waterfalls', false);
	addLuaSprite('blast_hills', false);
	addLuaSprite('Monitor', false);
	addLuaSprite('plants', false);
	addLuaSprite('blast_floor', false);
	addLuaSprite('blast_rocks', true);
	--]]

	--hog
	----[[
	addLuaSprite('bg', false);
	addLuaSprite('motains', false);
	addLuaSprite('Waterfalls', false);
	addLuaSprite('HillsandHills', false);
	addLuaSprite('trees', false);
	addLuaSprite('floor', false);
	addLuaSprite('rocks', true);
	--]]
	--other shit
	addLuaSprite('blackout', true);
	addLuaSprite('vignette', true);
end