function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('Rocket');
	precacheSound('RocketBeep');
      precacheSound('HitSound');
end

function onEvent(name, value1, value2)
    if name == "RocketEvent" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
    playSound('RocketBeep', 1.5);
	makeAnimatedLuaSprite('Rocket', 'Rocket', 355, 175);
    luaSpriteAddAnimationByPrefix('Rocket', 'Rocket', 'Rocket', 24, true);
	luaSpritePlayAnimation('Rocket', 'Rocket');
	setObjectCamera('Rocket', 'other');
	scaleLuaSprite('Rocket', 0.75, 0.75); 
    addLuaSprite('Rocket', true); 
	makeAnimatedLuaSprite('Alert', 'Alert', 1325, 420);
    luaSpriteAddAnimationByPrefix('Alert', 'Alert', 'Alert', 24, true);
	luaSpritePlayAnimation('Alert', 'Alert');
	setObjectCamera('Alert', 'game');
	scaleLuaSprite('Alert', 1, 1); 
    addLuaSprite('Alert', true); 
	
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('space') then
   
   Dodged = true;
   characterPlayAnim('boyfriend', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);
   doTweenAlpha('byebye', 'Rocket', 0, 0.3, 'linear');
   doTweenAlpha('byebye', 'Alert', 0, 0.3, 'linear');
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   health = getProperty('health')
   characterPlayAnim('boyfriend', 'hurt', true);
   setProperty('health', health- 0.75);
   playSound('HitSound', 3);
   doTweenAlpha('byebye', 'Rocket', 0, 0.3, 'linear');
   doTweenAlpha('byebye', 'Alert', 0, 0.3, 'linear');
   canDodge = false
   
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   
   end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('Rocket', true);
            removeLuaSprite('Alert', true);
	end
end