local FunIsInfinite = false;
local FunIsForever = false;

function onCreate()
    if os.date('%b %d') == 'Jun 29' then --since Endless (Forest Mix) was a birthday gift for MarStarBro, might as well do the same
        setProperty('timeTxt.visible', false);
        makeLuaText('birthday', 'Happy Birthday MarStarBro!', 1170, 60, 25)
        setTextSize('birthday', 18)
        setTextAlignment('birthday','center')
        setObjectCamera('birthday','hud')
        addLuaText('birthday')
        setTextColor('birthday', '0xFFFFFF')
        setTextSize('birthday', getTextSize('birthday'))
        setProperty('birthday.alpha', 0);
        setProperty('birthday.visible', false);
        screenCenter('birthday', 'xy')
    end
    setProperty('three.alpha', 1)
    doTweenAlpha('hide3', 'three', 0, 0.00001, 'cubeInOut')
    setProperty('two.alpha', 1)
    doTweenAlpha('hide2', 'two', 0, 0.00001, 'cubeInOut')
    setProperty('one.alpha', 1)
    doTweenAlpha('hide1', 'one', 0, 0.00001, 'cubeInOut')
    setProperty('hi.alpha', 1)
    doTweenAlpha('HIde', 'hi', 0, 0.00001, 'cubeInOut')
end
function onBeatHit()
    if curBeat % 8 == 0 and FunIsInfinite then
        meatspin();
    end
    if curBeat % 4 == 0 and FunIsForever then
        meatspin();
    end

    if curBeat == 224 then
        doTweenZoom('Zoom3', 'camGame', 0.55, 0.23, 'cubeInOut')
        doTweenAlpha('unhide3', 'three', 1, 0.00001, 'cubeInOut')
        doTweenAlpha('pre2', 'three', 0, 0.321, 'cubeInOut')
    end
    if curBeat == 225 then
        doTweenZoom('Zoom2', 'camGame', 0.70, 0.23, 'cubeInOut')
        doTweenAlpha('unhide2', 'two', 1, 0.00001, 'cubeInOut')
        doTweenAlpha('pre1', 'two', 0, 0.321, 'cubeInOut')
    end
    if curBeat == 226 then
        doTweenZoom('Zoom1', 'camGame', 0.85, 0.23, 'cubeInOut')
        doTweenAlpha('unhide1', 'one', 1, 0.00001, 'cubeInOut')
        doTweenAlpha('prehi', 'one', 0, 0.321, 'cubeInOut')
    end
    if curBeat == 227 then
        doTweenZoom('ZoomHi', 'camGame', 1, 0.23, 'cubeInOut')
        doTweenAlpha('unHIde', 'hi', 1, 0.00001, 'cubeInOut')
        doTweenAlpha('endhi', 'hi', 0, 0.321, 'cubeInOut')
    end
    if curBeat == 228 then
        doTweenZoom('Unzoom', 'camGame', 0.4, 0.15, 'cubeInOut')
    end
end

function onCreatePost() -- no countdown + mid song countdown shit
	setProperty('startTimer.finished', true)

    makeLuaSprite('three', 'exe/mazin/three', 320, 300)
	addLuaSprite('three', true)
	setObjectCamera('three', 'other')
	setProperty('three.alpha', 0)
    screenCenter('three', 'xy')
    makeLuaSprite('two', 'exe/mazin/two', 360, 300)
	addLuaSprite('two', true)
	setObjectCamera('two', 'other')
	setProperty('two.alpha', 0)
    screenCenter('two', 'xy')
    makeLuaSprite('one', 'exe/mazin/one', 360, 300)
	addLuaSprite('one', true)
	setObjectCamera('one', 'other')
	setProperty('one.alpha', 0)
    screenCenter('one', 'xy')
    makeLuaSprite('hi', 'exe/mazin/hitit', 360, 300)
	addLuaSprite('hi', true)
	setObjectCamera('hi', 'other')
	setProperty('hi.alpha', 0)
    screenCenter('hi', 'xy')
end

function onUpdate(elapsed)
    if curStep == 0 then
        if os.date('%b %d') == 'Jun 29' then 
            setProperty('birthday.visible', true);
            doTweenAlpha('birth','birthday', 1, 0.25,'circInOut')
        end
    end
    if curStep == 272 or curStep == 912 or curStep == 1172 then
        FunIsInfinite = true;
    end
    if curStep == 528 or curStep == 1039 or curStep == 1423  then
        FunIsInfinite = false;
    end
    if curStep == 685 or curStep == 1040 or curStep == 1424 then
        FunIsForever = true;
    end
    if curStep == 894 or curStep == 1152 or curStep == 1680 then
        FunIsForever = false;
    end
end
function onTimerCompleted(tag, loops, loopsLeft)   
    if tag == 'wleeee' then --old way of doing note spins; run a timer [NOW OBSOLETE]
        --meatspin() 
    end 
end

function meatspin()
    noteTweenAngle('sexd4', 0, 360, 1.2, 'quartOut');
    noteTweenAngle('sexd3', 1, 360, 1.2, 'quartOut');
    noteTweenAngle('sexd2', 2, 360, 1.2, 'quartOut');
    noteTweenAngle('sexd', 3, 360, 1.2, 'quartOut');
    noteTweenAngle('sex4', 4, 360, 1.2, 'quartOut');
    noteTweenAngle('sex3', 5, 360, 1.2, 'quartOut');
    noteTweenAngle('sex2', 6, 360, 1.2, 'quartOut');
    noteTweenAngle('sex', 7, 360, 1.2, 'quartOut');
end

function onTweenCompleted(bruh)
    if bruh == 'sexd4' then
        setPropertyFromGroup('opponentStrums', 0, 'angle')
    end
    if bruh == 'sexd3' then
        setPropertyFromGroup('opponentStrums', 1, 'angle')
    end
    if bruh == 'sexd2' then
        setPropertyFromGroup('opponentStrums', 2, 'angle')
    end
    if bruh == 'sexd4' then
        setPropertyFromGroup('opponentStrums', 3, 'angle')
    end
    if bruh == 'sex4' then
        setPropertyFromGroup('playerStrums', 0, 'angle')
    end
    if bruh == 'sex3' then
        setPropertyFromGroup('playerStrums', 1, 'angle')
    end
    if bruh == 'sex2' then
        setPropertyFromGroup('playerStrums', 2, 'angle')
    end
    if bruh == 'sex' then
        setPropertyFromGroup('playerStrums', 3, 'angle')
    end
end

