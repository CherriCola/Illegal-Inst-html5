function onCreate()
    makeLuaSprite('sky', 'exe/soulless/bg', -810, -850)
    scaleObject('sky', 1.5, 1.5);
    makeAnimatedLuaSprite('spirit', 'exe/soulless/Spirits', -810, -850)
    addAnimationByPrefix('spirit', 'wave', 'SpiritWavingthing', 24, true)
    scaleObject('spirit', 1.5, 1.5);
    setProperty('spirit.alpha', 0)
    makeLuaSprite('floor', 'exe/soulless/ground', -810, -850)
    scaleObject('floor', 1.5, 1.5);
    makeLuaSprite('fog', 'exe/soulless/fog', -810, -850)
    scaleObject('fog', 1.5, 1.5);
    setProperty('fog.alpha', 0.7) 

    makeLuaSprite('run_bg', 'exe/soulless/pixelbg', 180, -60)
    scaleObject('run_bg', 3, 3);
    setProperty('run_bg.antialiasing', 'false')
    makeAnimatedLuaSprite('run_stage', 'exe/soulless/stage_running', -830, -609)
    addAnimationByPrefix('run_stage', 'stage', 'stage', 24, true)
    scaleObject('run_stage', 5, 5);
    setProperty('run_stage.antialiasing', 'false')

    makeAnimatedLuaSprite('static', 'exe/staticc', 0, 0)
    addAnimationByPrefix('static', 'idle', 'staticc', 24, true);
    scaleObject('static', 2.67, 2.67);
    screenCenter('static', 'xy')
    setObjectCamera('static', 'other')
    setProperty('static.alpha', 0)

    makeAnimatedLuaSprite('titlecard', 'exe/openings/soulless-endeavors_title_card', 0, 0);
	addAnimationByPrefix('titlecard', 'end', 'soulless-endeavors_title', 24, false);
	setObjectCamera('titlecard', 'other')
	screenCenter('titlecard', 'xy')

    addLuaSprite('sky', false)
    addLuaSprite('spirit', false)
    addLuaSprite('floor', false)
    addLuaSprite('fog', true)

    setProperty('run_stage.alpha', 0)
    setProperty('run_bg.alpha', 0)
    addLuaSprite('run_bg', false)
    addLuaSprite('run_stage', false)

    addLuaSprite('static', true)
    addLuaSprite('titlecard', true)
end