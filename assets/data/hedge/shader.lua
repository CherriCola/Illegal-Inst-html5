local shaderName = "fuck"
local isTrue = false

function onCreatePost()
    shaderCoordFix() -- initialize a fix for textureCoord when resizing game window

    makeLuaSprite("tempShader0")
end

function onUpdate(elapsed)
    if version > '0.6.2' then --make sure this only runs on 0.6.3+
        if curStep == 1284 then
            enableShader();
        end
        if curStep == 1290 then
            disableShader();
        end
        if curStep == 1306 then
            enableShader();
        end
        if curStep == 1312 then
            disableShader();
        end
        if curStep == 1330 then
            enableShader();
        end
        if curStep == 1338 then
            disableShader();
        end
        if curStep == 1426 then
            enableShader();
        end
        if curStep == 1440 then
            disableShader();
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

setShaderFloat("tempShader0", "SPEED", 0.6)
setShaderFloat("tempShader0", "AMT", 0.5)
end

function enableShader()
        isTrue = true
        runHaxeCode([[
            var shaderName = "]] .. shaderName .. [[";
            
            game.initLuaShader(shaderName);
            
            var shader0 = game.createRuntimeShader(shaderName);
            game.camGame.setFilters([new ShaderFilter(shader0)]);
            game.camHUD.setFilters([new ShaderFilter(shader0)]);
            game.getLuaObject("tempShader0").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
        ]])
end

function disableShader()
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