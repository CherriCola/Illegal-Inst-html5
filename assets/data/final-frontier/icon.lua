-- thanks bacon for the script im a fucking dumbass   
function onCreate() --taken from source code hehe yoink
	if dadName == 'dukep3' then
		makeAnimatedLuaSprite('kapowf', 'icons/icon-duke3g', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('kapowf', 'normal', 'neutralbozo', 24, true)
		addAnimationByPrefix('kapowf', 'losing', 'guh', 24, true)
		setScrollFactor('kapowf', 0, 0)
        setObjectCamera('kapowf', 'hud')
		addLuaSprite('kapowf', true)
		setObjectOrder('kapowf', 99)
		objectPlayAnimation('kapowf', 'normal', false)
	end
end

function onUpdate(elapsed)
	if dadName == 'dukep3' then
        setProperty('kapowf.alpha', 1)
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
            setProperty('kapowf.x', getProperty('iconP2.x') - 75)
            setProperty('kapowf.y', getProperty('iconP2.y') - 100)
			objectPlayAnimation('kapowf', 'losing', false)
		else
			objectPlayAnimation('kapowf', 'normal', false)
		end
    else
        setProperty('kapowf.alpha', 0)
        setProperty('iconP2.alpha', 1)
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('kapowf.x', getProperty('iconP2.x') - 10)
	setProperty('kapowf.angle', getProperty('iconP2.angle'))
	--setProperty('kapowf.y', getProperty('iconP2.y') - 15)
	setProperty('kapowf.scale.x', getProperty('iconP2.scale.x'))
	setProperty('kapowf.scale.y', getProperty('iconP2.scale.y'))
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
end