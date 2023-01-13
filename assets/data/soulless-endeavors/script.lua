function onUpdate(elapsed)
	if curStep == 638 then
		setProperty('static.alpha', 1);
	end
	if curStep == 639 then
		setProperty('fog.antialiasing', false)
		setProperty('fog.alpha', 0)
		setProperty('run_stage.alpha', 1)
		setProperty('run_bg.alpha', 1)
		setPropertyFromClass("PlayState", "isPixelStage", true);
	end
	if curStep == 640 then
		setProperty('static.alpha', 0);
	end

	if curStep == 1150 then
		setProperty('static.alpha', 1);
	end
	if curStep == 1151 then
		setProperty('fog.antialiasing', true)
		setProperty('fog.alpha', 1)
		setProperty('run_stage.alpha', 0)
		setProperty('run_bg.alpha', 0)
		setProperty('spirit.alpha', 1)
		setPropertyFromClass("PlayState", "isPixelStage", false);
	end
	if curStep == 1152 then
		setProperty('static.alpha', 0);
	end
	if curStep == 1797 then
		doTweenAlpha('noHUD', 'camHUD', 0, 0.8, 'cubeInOut')
	end
end

function onCreatePost() -- no countdown
	setProperty('startTimer.finished', true)
end