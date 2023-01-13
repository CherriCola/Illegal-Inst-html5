

function onCreate()
    local fucklesBeat = false
    local fucklesDrain = false
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-chaotix-death');
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'chaotix-death'); 
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'chaotix-loop'); 
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'chaotix-retry');
    doTweenAlpha('blackouttrash', 'blackout', 0, 0.0001, 'cubeInOut'); -- WHY DOES PSYCH ENGINE GIVE A FUCK ABOUT A SIMPLE ASS GRAMMAR ERROR
end


function onUpdate(elapsed)
    if curStep == 904 then
        doTweenAlpha('hudFade', 'camHUD', 0, 1, 'cubeInOut');
    end
    if curStep == 918 then
        doTweenAlpha('blackoutout', 'blackout', 1, 0.7, 'cubeInOut');
    end
    if curStep == 920 then
        --dotweenAlpha('blackoutout', 'blackout', 1, 0.7, 'cubeInOut');
    end
    if curStep == 983 then
        removeLuaSprite('BGPixel', false);
        removeLuaSprite('FGPixel', false);
        --[[objectPlayAnimation('AmyBg', 'fear');
        objectPlayAnimation('CharmyBg', 'fear');
        objectPlayAnimation('MightyBg', 'fear');
        objectPlayAnimation('EspioBg','fear');
        objectPlayAnimation('KnucklesBg', 'fear');
        objectPlayAnimation('VectorBg', 'fear');--]]
        fucklesBeat = true;
    end    
    if curStep == 990 then
        --removeLuaSprite('blackout', false);
        doTweenAlpha('blackoutin2', 'blackout', 0, 0.025, 'cubeInOut');
        doTweenAlpha('hudFade', 'camHUD', 1, 0.25, 'cubeInOut');
    end
    if fucklesDrain then
        --runTimer('fucklesTheHealthHog', 4.4, 1); --timers not working
        setProperty('health', getProperty('health') - 0.00035 * misses / getRandomInt(1,5)); --suck at playing it? get fucked GURARARARARA
    end
end

function onCreatePost() -- no countdown
	setProperty('startTimer.finished', true)
end

function noteMiss(id, noteData, noteType, isSustainNote)
    health = getProperty('health')
    --if getProperty('health') > 0.05 then
    
    if fucklesBeat then
        fucklesDrain = true;
        --runTimer('fucklesTheHealthHog', 4.4, 1);
        if fucklesDrain then
            --setProperty('health', health- 0.035);
        end
    end
end

--[[function onTimerCompleted(fuckles, its, knuckles)
    if fuckles == 'fucklesTheHealthHog' then
        fucklesDrain = false;
    end
end--]]
function onBeatHit()
    if not fucklesBeat then
        objectPlayAnimation('AmyBg', 'idle');
        objectPlayAnimation('CharmyBg', 'idle');
        objectPlayAnimation('MightyBg', 'idle');
        objectPlayAnimation('EspioBg','idle');
        objectPlayAnimation('KnucklesBg', 'idle');
        objectPlayAnimation('VectorBg', 'idle');
    else
        objectPlayAnimation('AmyBg', 'fear');
        objectPlayAnimation('CharmyBg', 'fear');
        objectPlayAnimation('MightyBg', 'fear');
        objectPlayAnimation('EspioBg','fear');
        objectPlayAnimation('KnucklesBg', 'fear');
        objectPlayAnimation('VectorBg', 'fear');
    end
end
