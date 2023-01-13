function onUpdate(elapsed)
    if curStep == 518 then
        doTweenAlpha('MagicallyBroken', 'blackout', 1, 1.25, 'cubeInOut') --this code magically breaks whenever i start recording it. may as well use the comments to vent out, HOW MUCH I FUCKING HATE THIS SHIT
        doTweenAlpha('noHUD', 'camHUD', 0, 1.45, 'cubeInOut')
    end
    --transform?
    if curStep == 576 then --I suck at making efficient code.
        setProperty('blackout.alpha', 0.3)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 582 then
        setProperty('blackout.alpha', 0.3)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 640 then
        setProperty('blackout.alpha', 0.4)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 646 then
        setProperty('blackout.alpha', 0.4)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 672 then
        setProperty('blackout.alpha', 0.5)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 678 then
        setProperty('blackout.alpha', 0.5)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 704 then
        setProperty('blackout.alpha', 0.6)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 710 then
        setProperty('blackout.alpha', 0.6)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 736 then
        setProperty('blackout.alpha', 0.7)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 742 then
        setProperty('blackout.alpha', 0.7)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 768 then
        setProperty('blackout.alpha', 0.8)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 774 then
        setProperty('blackout.alpha', 0.8)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 800 then
        setProperty('blackout.alpha', 0.9)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 806 then
        setProperty('blackout.alpha', 0.9)
        doTweenAlpha('blackfbin', 'blackout', 1, 0.45)
    end
    if curStep == 845 then
        removeLuaSprite('bg');
        removeLuaSprite('motains');
        removeLuaSprite('Waterfalls');
        removeLuaSprite('HillsandHills');
        removeLuaSprite('trees');
        removeLuaSprite('floor');
        removeLuaSprite('rocks');

        setProperty('sunset.alpha', '1');
        setProperty('blast_mountains.alpha', '1');
        setProperty('Blast_Waterfalls.alpha', '1');
        setProperty('blast_hills.alpha', '1');
        setProperty('Monitor.alpha', '1');
        setProperty('blast_floor.alpha', '1');
        setProperty('plants.alpha', '1');
        setProperty('blast_rocks.alpha', '1');
        --runTimer('balls', 2)
    end
    if curStep == 848 then
        doTweenAlpha('MagicallyBroken2', 'blackout', 0, 0.5);
    end
    if curStep == 863 then
        doTweenAlpha('HUDback', 'camHUD', 1, 0.35, 'cubeInOut');
    end
    if curStep == 4128 then
        doTweenAlpha('stress', 'vignette', 1, 2.3, 'cubeInOut');    
    end
    if curStep == 4710 then
        doTweenAlpha('noBG1', 'blast_mountains', 0, 0.5, 'cubeInOut');
        doTweenAlpha('noBG2', 'Blast_Waterfalls', 0, 0.5, 'cubeInOut');
    end
    if curStep == 4752 then
        doTweenAlpha('noBG4', 'blast_hills', 0, 0.5, 'cubeInOut');
        doTweenAlpha('noBG5', 'Monitor', 0, 0.5, 'cubeInOut');
    end
end

function onCreatePost() -- no countdown
	setProperty('startTimer.finished', true)
end

function onCreate()
    runTimer('balls', 2)
end

--setProperty('blackout.alpha', '0'); -- in case it fails to fade out :)
function onTimerCompleted(tag, loops, loopsLeft)    
    if tag == 'balls' then
            if getRandomInt(1,5) == 1 then
            objectPlayAnimation('Monitor', 'Monitor');
        elseif getRandomInt(1,5) == 2 then
            objectPlayAnimation('Monitor', 'FE');
        elseif getRandomInt(1,5) == 3 then
            objectPlayAnimation('Monitor', 'NMI');
        elseif getRandomInt(1,5) == 4 then
            objectPlayAnimation('Monitor', 'Needle');
        elseif getRandomInt(1,5) == 5 then
            objectPlayAnimation('Monitor', 'Starved');
        end
        runTimer('balls', 2)
    end
end