--[[function onCreate()
	makeAnimatedLuaSprite('titlecard', 'exe/openings/' + getProperty('SONG.song.toLowerCase') + '_title_card', 0, 0);
	addAnimationByIndices('titlecard', 'idle', getProperty('SONG.song.toLowerCase') + '_title', 0, 24);
	addAnimationByPrefix('titlecard', 'end', getProperty('SONG.song.toLowerCase') + '_title', 24, false);
	setObjectCamera('titlecard', 'other')
	screenCenter('titlecard', 'xy')
	addLuaSprite('titlecard', true);
end
function onUpdate(elapsed)
    if curStep == 1 then
        objectPlayAnimation('titlecard','end')
    end
end--]]