function onEvent(name, value1, value2)
    if name == 'Change BG' then
        if value1 == 'change' then
            makeLuaSprite('tag1', ' --Insert image name here-- ', 0, 0);
            setProperty('tag1.visible', true) --true means it will show and false means it wont show
            addLuaSprite('tag1', false) --this is diffrent but true means it will be infront of charactrers and false means it will not
        end
    end
end

