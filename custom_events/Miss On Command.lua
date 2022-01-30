function onEvent(name, value1, value2)
    if value1 == '1' then
        playSound('missnote1', 1)
    else
        playSound('missnote1', 1)
        addMisses(1)
    end
end