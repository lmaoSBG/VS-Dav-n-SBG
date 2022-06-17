function onEvent(name, value1)
	if name == "GlitchArrowEvent" then
		makeAnimatedLuaSprite('arrowglitch', 'arrowglitch', 725, 35);
		luaSpriteAddAnimationByPrefix('arrowglitch', 'arrowglitch', 'arrowglitch', 24, true);
		addLuaSprite('arrowglitch', true);
            setProperty('arrowglitch.antialiasing', false);
            scaleObject('arrowglitch', 7, 7);
		doTweenColor('hello', 'arrowglitch', 'FFFFFFFF', 0.5, 'quartIn');
		setObjectCamera('arrowglitch', 'other');
		runTimer('wait', value1);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'arrowglitch', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('arrowglitch', true);
	end
end