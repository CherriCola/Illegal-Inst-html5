function onEvent(name, value1, value2)
    if name == 'NormalCD Harmonization' then
        if value1 == 'dad' then
        removeLuaSprite('Dadfade', false);
        makeAnimatedLuaSprite('Dadfade', getProperty('dad.imageFile'), getProperty('dad.x')+155, getProperty('dad.y')+220);
        addAnimationByPrefix('Dadfade', 'singLEFT', 'Normal_LEFT', 24, false); 
        addAnimationByPrefix('Dadfade', 'singDOWN', 'Normal_DOWN', 24, false); 
        addAnimationByPrefix('Dadfade', 'singUP', 'Normal_UP', 24, false); 
        addAnimationByPrefix('Dadfade', 'singRIGHT', 'Normal_RIGHT', 24, false); 
        scaleObject('Dadfade', 1.4, 1.4);
        addLuaSprite('Dadfade', false);
        doTweenAlpha('Dadtransp', 'Dadfade', 0.7, 0.0001);
        objectPlayAnimation('Dadfade', value2); 
        doTweenAlpha('Dadfadeout', 'Dadfade', 0, 0.4, 'cubeInOut');
        runTimer('animD', 0.4, 0);

        if value2 == 'singLEFT' then --the most ineffecient bit of code ever written. please send help.
            setProperty('Dadfade.x', getProperty('Dadfade.x')-120)
            setProperty('Dadfade.y', getProperty('Dadfade.y')+142)
        end
        if value2 == 'singDOWN' then
            setProperty('Dadfade.x', getProperty('Dadfade.x')-60);
            setProperty('Dadfade.y', getProperty('Dadfade.y')+195);
        end
        if value2 == 'singUP' then
            setProperty('Dadfade.y', getProperty('Dadfade.y')-2);
        end
        if value2 == 'singRIGHT' then
            setProperty('Dadfade.x', getProperty('Dadfade.x')+65);
            setProperty('Dadfade.y', getProperty('Dadfade.y')+144);
        end

        end
        if value1 == 'bf' then
            removeLuaSprite('Bffade', false);
            makeAnimatedLuaSprite('Bffade', getProperty('boyfriend.imageFile'), getProperty('boyfriend.x')-100, getProperty('boyfriend.y')-120);
            addAnimationByPrefix('Bffade', 'singLEFT', 'Metal_LEFT', 24, false); 
            addAnimationByPrefix('Bffade', 'singDOWN', 'Metal_DOWN', 24, false); 
            addAnimationByPrefix('Bffade', 'singUP', 'Metal_UP', 24, false); 
            addAnimationByPrefix('Bffade', 'singRIGHT', 'Metal_RIGHT', 24, false); 
            scaleObject('Bffade', 1.5, 1.5);
            addLuaSprite('Bffade', false);
            doTweenAlpha('Bftransp', 'Bffade', 0.7, 0.0001);
            objectPlayAnimation('Bffade', value2); 
            doTweenAlpha('Bffadeout', 'Bffade', 0, 0.4, 'cubeInOut');
            runTimer('animB', 0.4, 0);

            if value2 == 'singLEFT' then
                setProperty('Bffade.x', getProperty('Bffade.x'));
                setProperty('Bffade.y', getProperty('Bffade.y'));
            end
            if value2 == 'singDOWN' then
                setProperty('Bffade.x', getProperty('Bffade.x')+160);
                setProperty('Bffade.y', getProperty('Bffade.y')+15);
            end
            if value2 == 'singUP' then
                setProperty('Bffade.x', getProperty('Bffade.x')+160);
                setProperty('Bffade.y', getProperty('Bffade.y')-20);
            end
            if value2 == 'singRIGHT' then
                setProperty('Bffade.x', getProperty('Bffade.x')+120);
                setProperty('Bffade.y', getProperty('Bffade.y')+45);
            end

        end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'animD' then
        setProperty('Dadfade.x', getProperty('dad.x')+155);
        setProperty('Dadfade.y', getProperty('dad.y')+220)
        removeLuaSprite('Dadfade', false);
    end
    if tag == 'animB' then
        setProperty('Bffade.x', getProperty('boyfriend.x')-100);
        setProperty('Bffade.y', getProperty('boyfriend.y')-120)
        removeLuaSprite('Bffade', false);
    end
end