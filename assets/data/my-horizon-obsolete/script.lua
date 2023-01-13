function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-chaotix-death');
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'chaotix-death'); 
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'chaotix-loop'); 
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'chaotix-retry');
    --setPropertyFromClass("PlayState", "isPixelStage", true);
    --doTweenAlpha('blackouttrash', 'blackout', 0, 0.0001, 'cubeInOut'); -- WHY DOES PSYCH ENGINE GIVE A FUCK ABOUT A SIMPLE ASS GRAMMAR ERROR
    setProperty('vectorHD.alpha', '0');
    setProperty('knucklesHD.alpha', '0');
    setProperty('trees2.alpha', '0');

    makeLuaSprite('whiteout', "", -1450, -825);
    makeGraphic('whiteout', 4000, 2560, 'FFFFFF');
    setProperty('whiteout.alpha', '0');
    setObjectCamera('whiteout', 'hud')
    addLuaSprite('whiteout')
end

function onUpdate(elapsed)
    if curStep == 1 then
        --[[
            for i = 0, getProperty('playerStrums.length')-1 do --this sucks ass

                setPropertyFromGroup('playerStrums', i, 'texture', 'NOTEPIXEL_assets')
    
            end
    
            for i = 0, getProperty('opponentStrums.length')-1 do
    
                setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTEPIXEL_assets')
    
            end--]]
    end
    --[[if curStep == 2 then --to make it load pixel ratings, without the arrows changing, cause i cant for the life of me figure it out without lag spikes (and cause the fake pixel notes suck ass)
        setPropertyFromClass("PlayState", "isPixelStage", true);
    end--]]
    if curStep == 768 then
        doTweenAlpha('camFade', 'camHUD', 0, 1.6, 'cubeInOut');
    end
    if curStep ==  792 then
        doTweenAlpha('blackout1', 'blackout', 1, 0.45, 'cubeInOut');
    end
    if curStep == 928 then
        doTweenAlpha('blackout2', 'blackout2', 1, 0.15, 'cubeInOut');
    end
    if curStep == 983 then -- random time :)
        setPropertyFromClass("PlayState", "isPixelStage", false);

        setProperty('vectorHD.alpha', '1');
        setProperty('knucklesHD.alpha', '1');
        setProperty('trees2.alpha', '1');

        setProperty('BGPixel.alpha', '0');
        setProperty('FGPixel.alpha', '0');
        setProperty('AmyBg.alpha', '0');
        setProperty('CharmyBg.alpha', '0');
        setProperty('EspioBg.alpha', '0');
        setProperty('gf.alpha', '0');
        setProperty('MightyBg.alpha', '0');
        setProperty('KnucklesBg.alpha', '0');
        setProperty('VectorBg.alpha', '0');   
    end
    if curStep == 1000 then
        doTweenAlpha('hideblackout', 'blackout', 0, 0.25, 'cubeInOut');
        doTweenAlpha('hideblackout2', 'blackout2', 0, 0.25, 'cubeInOut');
        doTweenAlpha('camFadeIn', 'camHUD', 1, 0.25, 'cubeInOut');

        setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-holding-gf-dead');
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); 
    end
    if curStep ==  1011 then
        setProperty('blackout.alpha', '0');
        setProperty('blackout2.alpha', '0');
        --setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-holding-gf-dead');
        --setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx');
    end
    if curStep ==  2336 then
        setProperty('whiteout.alpha', '1');
        doTweenAlpha('fadewhite', 'whiteout', 0, 0.25, 'cubeInOut');
        setPropertyFromClass("PlayState", "isPixelStage", true);

        setProperty('vectorHD.alpha', '0');
        setProperty('knucklesHD.alpha', '0');
        setProperty('trees2.alpha', '0');

        setProperty('BGPixel.alpha', '1');
        setProperty('FGPixel.alpha', '1');
        setProperty('AmyBg.alpha', '1');
        setProperty('CharmyBg.alpha', '1');
        setProperty('EspioBg.alpha', '1');
        setProperty('gf.alpha', '1');
        setProperty('MightyBg.alpha', '1');
        setProperty('KnucklesBg.alpha', '1');
        setProperty('VectorBg.alpha', '1'); 

        setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-chaotix-death');
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'chaotix-death'); 
    end
    if curStep ==  2848 then
        setProperty('whiteout.alpha', '1');
        doTweenAlpha('fadewhite', 'whiteout', 0, 0.25, 'cubeInOut');
        setPropertyFromClass("PlayState", "isPixelStage", false);
        
        setProperty('vectorHD.alpha', '1');
        setProperty('knucklesHD.alpha', '1');
        setProperty('trees2.alpha', '1');

        setProperty('BGPixel.alpha', '0');
        setProperty('FGPixel.alpha', '0');
        setProperty('AmyBg.alpha', '0');
        setProperty('CharmyBg.alpha', '0');
        setProperty('EspioBg.alpha', '0');
        setProperty('gf.alpha', '0');
        setProperty('MightyBg.alpha', '0');
        setProperty('KnucklesBg.alpha', '0');
        setProperty('VectorBg.alpha', '0'); 

        setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-holding-gf-dead');
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); 
    end
    if curStep == 2976 then
        doTweenAlpha('camFade', 'camHUD', 0, 1.6, 'cubeInOut');
        setObjectCamera('whiteout', 'other')
    end
    if curStep == 3104 then
        setProperty('whiteout.alpha', '1');
        setProperty('blackout2.alpha', '1');
        doTweenAlpha('fadewhite', 'whiteout', 0, 1.25, 'cubeInOut');
    end
end
