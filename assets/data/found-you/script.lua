function onUpdate(elapsed)
	if curStep == 0 then
		doTweenZoom('Zoom', 'camGame', 1.15, 0.45, 'cubeInOut')
	end
	if curStep == 1 then

		--doTweenX('Zoom2', 'camGame', -530, 0.45, 'cubeInOut')		
		objectPlayAnimation('door', 'meandyourmom')
	end
	if curStep == 94 then
		doTweenX('broken', "dad", 100, 0.15);
		doTweenAlpha('unhide', "dad", 1, 0.000000001);
	end
	if curStep == 159 then
		doTweenAlpha('unhidehud', "camHUD", 1, 0.15, 'cubeInOut')
		doTweenZoom('unzoom', 'camGame', 0.9, 0.45, 'cubeInOut')
		--setProperty("defaultCamZoom", getProperty('camGame.zoom'))
	end
	if curStep == 2592 then
		if version > '0.6' then --make sure this only runs on 0.6.1+
			runHaxeCode([[
				game.iconP1.changeIcon('amy');
			]])
			setProperty('boyfriend.healthColorArray', {252, 144, 252})
			triggerEvent('Change Character', 'bf', getProperty('boyfriend.curCharacter'))
		end
	end
	if curStep == 3360 then
		if version > '0.6' then --make sure this only runs on 0.6.1+
			runHaxeCode([[
				game.iconP1.changeIcon('duo');
			]])
			setProperty('boyfriend.healthColorArray', {50, 73, 127})
			triggerEvent('Change Character', 'bf', getProperty('boyfriend.curCharacter'))
		end
	end	
end

function onCreatePost() -- no countdown
	setProperty('startTimer.finished', true)
end

function onCreate()
	doTweenX('breakin', "dad", -530, 0.000000001)
	doTweenAlpha('hide', "dad", 0, 0.000000001)
	doTweenAlpha('hidehud', "camHUD", 0, 0.000000001)
end

function onTweenCompleted(tag)	
	if tag == 'Zoom' then
	setProperty("defaultCamZoom", getProperty('camGame.zoom'))
	end
	if tag == 'unzoom' then
		setProperty("defaultCamZoom", getProperty('camGame.zoom'))
	end
end