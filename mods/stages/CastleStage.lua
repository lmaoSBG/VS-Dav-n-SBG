local angleshit = 1;
local anglevar = 1;

function onCreate()

	makeAnimatedLuaSprite('BGG', 'CastleBG', -450, 200);
	addAnimationByPrefix('BGG','PixelCastleBG','PixelCastleBG',24,true)
	setScrollFactor('BGG', 1, 1);
	scaleObject('BGG', 1.6, 1.6);
	addLuaSprite('BGG', false);
	objectPlayAnimation('BGG','PixelCastleBG',false)

	makeAnimatedLuaSprite('BG', 'CastleBG', -450, -150);
	addAnimationByPrefix('BG','PixelCastleBG','PixelCastleBG',24,true)
	setScrollFactor('BG', 1, 1);
	scaleObject('BG', 1.6, 1.6);
	addLuaSprite('BG', false);
	objectPlayAnimation('BG','PixelCastleBG',false)

	close(true);

end