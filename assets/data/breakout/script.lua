function onUpdate(elapsed)
    if curStep == 512 then
        doTweenAlpha('nohud', 'camHUD', 0, 3, cubeInOut);
    end
    if curStep == 544 then
        doTweenAlpha('yesstatic', 'static', 0.8, 2.5, cubeInOut);
    end
    if curStep == 575 then
        doTweenAlpha('yeshud', 'camHUD', 1, 0.15, cubeInOut);
    end
    if curStep == 703 then
        if version < '0.6.2' then --make sure this only runs on 0.6.3+
        doTweenAlpha('yesstatic', 'static', 1, 2.7, cubeInOut);
        end
    end
    if curStep == 830 then
        doTweenAlpha('sortahud', 'camHUD', 0.5, 0.15, cubeInOut);
    end
    if curStep == 928 then
        doTweenAlpha('morehud', 'camHUD', 1, 0.15, cubeInOut);
    end
    if curStep == 1215 then
        doTweenAlpha('nomorehud', 'camHUD', 0, 2.6, cubeInOut);
    end
end

function onTweenCompleted(tag)
    if tag == 'yesstatic' then
        doTweenAlpha('0static', 'static', 0, 0.0001);
    end
end