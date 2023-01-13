function onCreate()
    if FileExists('images/gort.png') then
        makeLuaSprite('gort','gort',0,0)
        setObjectCamera('gort', 'hud')
        addLuaSprite('gort')
    end
end