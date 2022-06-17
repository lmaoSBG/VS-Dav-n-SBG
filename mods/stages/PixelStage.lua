local angleshit = 1;
local anglevar = 1;

function onCreate()

	makeLuaSprite('BACK', 'pixelbackbg', -650, -350);
	setScrollFactor('BACK', 1, 1);
	scaleObject('BACK', 4, 4);
	addLuaSprite('BACK', false);

	makeLuaSprite('BG', 'pixelbackbg', -325, 200);
	setScrollFactor('BG', 1, 1);
	scaleObject('BG', 1, 1);
	addLuaSprite('BG', false);

	makeLuaSprite('FG', 'pixelbg', -1300, 725);
	setScrollFactor('FG', 0, 0);
	setScrollFactor('FG', 1, 1);
	scaleObject('FG', 1, 1);
	addLuaSprite('FG', false);

	close(true);

end