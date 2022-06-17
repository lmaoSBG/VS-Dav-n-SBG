local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then
	setProperty('camGame.visible',false)
	setProperty('camHud.visible',false)
	runTimer('lowEnd',1,1)

	allowCountdown = true;
	return Function_Stop;
	end
	setProperty('camGame.visible',true)
	setProperty('camHud.visible',true)
	return Function_Continue;
end


function onTimerCompleted(tag, Loops, LoopsLeft)

if tag == 'lowEnd' then
startVideo('fifth');
	end
end