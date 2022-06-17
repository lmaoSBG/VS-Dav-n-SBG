function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('MashSpace');
	precacheSound('HitSound');
end

function onEvent(name, value1, value2)
    if name == "DodgeEvent" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
	makeAnimatedLuaSprite('MashSpace', 'MashSpace', 300, 300);
    luaSpriteAddAnimationByPrefix('MashSpace', 'MashSpace', 'MashSpace', 24, true);
	luaSpritePlayAnimation('MashSpace', 'MashSpace');
	setObjectCamera('MashSpace', 'other');
	scaleLuaSprite('MashSpace', 0.75, 0.75); 
    addLuaSprite('MashSpace', true); 
	
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('space') then
   
   Dodged = true;
   characterPlayAnim('boyfriend', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);
   removeLuaSprite('MashSpace');
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   health = getProperty('health')
   characterPlayAnim('boyfriend', 'hurt', true);
   setProperty('health', health- 0.75);
   playSound('HitSound', 0.7);
   removeLuaSprite('MashSpace');
   canDodge = false
   
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   
   end
end