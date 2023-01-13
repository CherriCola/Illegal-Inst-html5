function onCreate() --no gf without making a stage json
	setProperty('gf.visible',false);
end
function onCreatePost() -- no countdown
	setProperty('startTimer.finished', true);
end