function onCreate()

	makeLuaSprite('BG','ScratchSky',-500,-300)
	makeLuaSprite('FG','Mountains',-500,-100)
	makeLuaSprite('FFG','FrontGroundScratch',-1250,625)
	makeAnimatedLuaSprite('FlyingGem','FlyingGem',-300,0)
	makeAnimatedLuaSprite('RoccoSTOP','RoccoSTOP',1700,230)

	addAnimationByPrefix('FlyingGem','FlyingGem','FlyingGem',24,true)

	addAnimationByPrefix('RoccoSTOP','RoccoSTOP','RoccoSTOP',24,false)

	setScrollFactor('BG', 0, 0);
	setScrollFactor('FG', 0, 0);
	setScrollFactor('FFG', 1, 1);
	setScrollFactor('FlyingGem', 1, 1);
	setScrollFactor('RoccoSTOP', 1, 1);

	scaleObject('BG', 1, 1);
	scaleObject('FG', 1, 1);
	scaleObject('FFG', 6, 1.2);
	scaleObject('FlyingGem', 0.8, 0.8);
	scaleObject('RoccoSTOP', 1, 1);

	addLuaSprite('BG', false);
	addLuaSprite('FG', false);
	addLuaSprite('FFG', false);
	addLuaSprite('FlyingGem',false);
	addLuaSprite('RoccoSTOP',false);

end