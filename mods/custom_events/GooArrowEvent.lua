function onEvent(name, value1, value2)
	if name == "GooArrowEvent" then
		makeAnimatedLuaSprite('Goo', 'Goo', 740, -110);
		luaSpriteAddAnimationByPrefix('Goo', 'Goo', 'Goo', 24, false);
            makeAnimatedLuaSprite('Drip', 'Drip', 740, 42);
		luaSpriteAddAnimationByPrefix('Drip', 'Drip', 'Drip', 24, true);
		addLuaSprite('Goo', true);
            scaleObject('Goo', 1, 1);
		doTweenColor('hello', 'Goo', 'FFFFFFFF', 0.5, 'quartIn');
		setObjectCamera('Goo', 'hud');
		runTimer('wait', value1);
		runTimer('amogusgus', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		removeLuaSprite('Goo', true);
		addLuaSprite('Drip', true);
            scaleObject('Drip', 1, 1);
            setObjectCamera('Drip', 'hud');
	elseif tag == 'amogusgus' then
		doTweenAlpha('byebye', 'Drip', 0, 0.3, 'quartIn');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('Drip', true);
	end
end