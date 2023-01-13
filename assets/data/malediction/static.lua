function onCreate()
    addLuaSprite('static', false);
    doTweenAlpha('nostatic', 'static', 0, 0.00001);
end
function onUpdate(elapsed)
    if curStep == 528 then
        doTweenAlpha('wrong', 'camHUD', 0.5, 0.3, 'cubeInOut');
    end
    if curStep == 558 then
        doTweenAlpha('nowrong', 'camHUD', 1, 0.3, 'cubeInOut');
    end
    if curStep == 725 then
        doTweenAlpha('just', 'camHUD', 0.5, 0.3, 'cubeInOut');
    end
    if curStep == 735 then
        doTweenAlpha('admit', 'camHUD', 1, 0.3, 'cubeInOut');
    end
    if curStep == 736 then
        doTweenAlpha('yesstatic', 'static', 1, 0.00001);
    end
    if curStep == 991 then
        doTweenAlpha('nomorestatic', 'static', 0, 1, 'cubeInOut');
        --removeLuaSprite('static', false);
    end
    if curStep == 1184 then
        doTweenAlpha('hudFade', 'camHUD', 0, 1, 'cubeInOut');
    end
    if curStep == 1288 then
        doTweenAlpha('hudFade', 'camGame', 0, 0.0000000000001, 'cubeInOut');
    end
end

function onCreatePost() -- no countdown
	setProperty('startTimer.finished', true)
end