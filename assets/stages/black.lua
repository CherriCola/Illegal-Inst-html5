function onCreate()

    makeLuaSprite('black', 'black', 0, 0);
    setLuaSpriteScrollFactor('black', 1.0, 1.0);
    addLuaSprite('black',game)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end