function onCreate()
    makeLuaSprite('sky', 'exe/entrance/bg', -800, -600)
    scaleObject('sky', 1.5, 1.5);
    makeLuaSprite('clock', 'exe/entrance/clock', -800, -600)
    scaleObject('clock', 1.5, 1.5);
    makeLuaSprite('towers', 'exe/entrance/towers', -800, -600)
    scaleObject('towers', 1.5, 1.5);
    makeLuaSprite('floor', 'exe/entrance/floor', -800, -600)
    scaleObject('floor', 1.5, 1.5);
    makeLuaSprite('arrows', 'exe/entrance/pointers', -800, -600)
    scaleObject('arrows', 1.5, 1.5);

    makeAnimatedLuaSprite('static', 'exe/staticc', 0, 0)
    addAnimationByPrefix('static', 'idle', 'staticc', 24, true);
    scaleObject('static', 2.67, 2.67);
    screenCenter('static', 'xy')
    setObjectCamera('static', 'other')
    doTweenAlpha('hidestatic', 'static', 0, 0.00001);

    makeAnimatedLuaSprite('titlecard', 'exe/openings/breakout_title_card', 0, 0);
	addAnimationByPrefix('titlecard', 'end', 'breakout_title', 24, false);
	setObjectCamera('titlecard', 'other')
	screenCenter('titlecard', 'xy')

    addLuaSprite('sky', false)
    addLuaSprite('clock', false)
    addLuaSprite('towers', false)
    addLuaSprite('floor', false)
    addLuaSprite('arrows', true)
    addLuaSprite('static', true)
    addLuaSprite('titlecard', true)
end

function onCreatePost() --no countdown
    setProperty('startTimer.finished', true)
end
