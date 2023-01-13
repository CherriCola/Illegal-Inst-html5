local shaderName = "barrel"
local isTrue = false

function onCreatePost()
    shaderCoordFix() -- initialize a fix for textureCoord when resizing game window

    makeLuaSprite("tempShader0")
end

function onUpdate(elapsed)
    setShaderFloat("tempShader0", "dis1", getProperty('titlecard.x')) --the title card is the only thing holding this together lmao
    setShaderFloat("tempShader0", "dis2", getProperty('titlecard.x'))
	if curStep == 704 then
        if version > '0.6.2' then --make sure this only runs on 0.6.3+
            isTrue = true
            doTweenX('shadyshit1', 'titlecard', 1, 0.5, 'quadInOut');
            runHaxeCode([[
                var shaderName = "]] .. shaderName .. [[";
                
                game.initLuaShader(shaderName);
                
                var shader0 = game.createRuntimeShader(shaderName);
                game.camGame.setFilters([new ShaderFilter(shader0)]);
                game.camHUD.setFilters([new ShaderFilter(shader0)]);
                game.getLuaObject("tempShader0").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
            ]])
	    end
    end
    if curStep == 728 then
        if version > '0.6.2' then --make sure this only runs on 0.6.3+
            doTweenX('shadyshit2', 'titlecard', -1, 0.35, 'quadInOut');
	    end
    end
    if curStep == 732 then
        if version > '0.6.2' then --make sure this only runs on 0.6.3+
            doTweenX('shadyshit3', 'titlecard', 0, 0.6, 'quadInOut');
            isTrue = false
	    end
    end
end

function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData3 = spr.__cacheBitmapData2 = spr.__cacheBitmapData = null;
            spr.__cacheBitmapColorTransform = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
        ]])
        temp()
end
end

function onUpdatePost(elapsed)
setShaderFloat("tempShader0", "iTime", os.clock())
end

function onTweenCompleted(tag)
    if tag == 'shadyshit' then
        setProperty('titlecard.x', getProperty('titlecard.x'))
    end
    if tag == 'shadyshit3' then
        if version > '0.6.2' then --make sure this only runs on 0.6.3+
            isTrue = false
            runHaxeCode([[
                var shaderName = "]] .. shaderName .. [[";
                
                game.initLuaShader(shaderName);
                
                var shader0 = game.createRuntimeShader(shaderName);
                game.camGame.setFilters();
                game.camHUD.setFilters();
                game.getLuaObject("tempShader0").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
            ]])
	    end
    end
end