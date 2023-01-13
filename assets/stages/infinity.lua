function onCreate()
    makeLuaSprite('bg', 'exe/mazin/infinitefun', -1300, -525);
    scaleObject('bg', 2, 2);
    makeLuaSprite('vine', 'exe/mazin/trees', -1300, -525); --do it for the vine
    scaleObject('vine', 2, 2);
    makeLuaSprite('ground', 'exe/mazin/centermotain', -1300, -525);
    scaleObject('ground', 2, 2);
    makeLuaSprite('lmountain', 'exe/mazin/leftmotain', -1300, -525);
    scaleObject('lmountain', 2, 2);
    setScrollFactor('lmountain', 0.8);
    makeLuaSprite('rmountain', 'exe/mazin/rightmotain', -1300, -525);
    scaleObject('rmountain', 2, 2);
    setScrollFactor('rmountain', 0.8);
    makeLuaSprite('bushes', 'exe/mazin/bushes', -1300, -525);
    scaleObject('bushes', 2, 2);
    setScrollFactor('bushes', 0.8);
    makeLuaSprite('overlay', 'exe/mazin/overlaybush', -1300, -525);
    --makeLuaSprite('overlay', 'exe/mazin/overlaybush', 0, 0);
    --setObjectCamera('overlay', 'other')
    --scaleObject('overlay', 0.667, 0.667);
    scaleObject('overlay', 2, 2);

    addLuaSprite('bg', false);
    addLuaSprite('vine', false);
    addLuaSprite('ground', false);
    addLuaSprite('lmountain', true);
    addLuaSprite('rmountain', true);
    addLuaSprite('bushes', false);
    addLuaSprite('overlay', true);
end