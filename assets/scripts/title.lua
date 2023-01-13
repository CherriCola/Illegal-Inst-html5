function onCreate()
    setPropertyFromClass("openfl.Lib", "application.window.title","Friday Night Funkin': Illegal Instruction")
end
function onCreatePost() -- no countdown
	setProperty('startTimer.finished', true)
end