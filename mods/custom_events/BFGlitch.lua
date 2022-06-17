function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('BFGlitch');
	precacheSound('GlitchSFX');
      precacheSound('HitSound');
end

function onEvent(name, value1, value2)
    if name == "BFGlitch" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
    playSound('GlitchSFX', 1.5);
	makeAnimatedLuaSprite('BFGlitch', 'BFGlitch', 495, 500);
    luaSpriteAddAnimationByPrefix('BFGlitch', 'BFGlitch', 'BFGlitch', 24, true);
	luaSpritePlayAnimation('BFGlitch', 'BFGlitch');
	setObjectCamera('BFGlitch', 'game');
	scaleLuaSprite('BFGlitch', 6, 6); 
    addLuaSprite('BFGlitch', true);
	
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('space') then
   
   Dodged = true;
   doTweenAlpha('byebye', 'BFGlitch', 0, 0.3, 'linear');
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   health = getProperty('health')
   setProperty('health', health- 0.75);
   playSound('HitSound', 3);
   doTweenAlpha('byebye', 'BFGlitch', 0, 0.3, 'linear');
   canDodge = false
   
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   
   end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('BFGlitch', true);
	end
end