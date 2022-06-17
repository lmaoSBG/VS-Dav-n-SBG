function onCreate()

	makeLuaSprite('BG', 'game_background', -900, -600);
	setScrollFactor('BG', 1, 1);
	scaleObject('BG', 0.8, 0.8);
	addLuaSprite('BG', false);
	close(true);

end