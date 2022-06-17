local bruh = true
local alpha = true

function onCreate()
    makeLuaSprite('gray', 'bg/gray', -300, -300)
    addLuaSprite('gray')
    setProperty('gray.alpha', 0.4)

    makeLuaSprite('bg', 'bg/bg', -540, -725)
    addLuaSprite('bg', false)

    makeLuaSprite('layer', 'bg/layer', -540, -725)
    addLuaSprite('layer', true)

end

