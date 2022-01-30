currentDifficulty = 'its still fucked';

function onCreate()
    makeLuaText('mod', "Vs Imposter Fanmade V.2", 0, 2, 685);
    setTextAlignment('mod', 'left');
    setTextSize('mod', 15);
    setTextBorder('mod', 1, '000000');
    addLuaText('mod');
end

function onCreatePost()
    setProperty('timeBar.y', getProperty('timeBar.y') - 10);
    setProperty('timeTxt.y', getProperty('timeTxt.y') - 10);
end

function onUpdate(elapsed)
    currentDifficulty = getProperty('storyDifficultyText');
    setTextString('mod',"Vs Imposter Fanmade V.2");
end