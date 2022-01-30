function onCreate()
	makeLuaSprite('main', 'stages/polus/MainBG', -600, -300);
	setScrollFactor('main', 1, 1);
	
	makeLuaSprite('red', 'polus/red', -1000, -500);
	setScrollFactor('red', 1, 1);
	scaleObject('red', 5, 5);
	
	makeLuaSprite('red1', 'polus/red1', -1000, -500);
	setScrollFactor('red1', 1, 1);
	scaleObject('red1', 5, 5);
	
	makeLuaSprite('red2', 'polus/red2', -1000, -500);
	setScrollFactor('red2', 1, 1);
	scaleObject('red2', 5, 5);

	addLuaSprite('main', false);
	addLuaSprite('red', true);
	addLuaSprite('red1', true);
	addLuaSprite('red2', true);
	
	setProperty('main.visible', true);
	setProperty('red.visible', false);
	setProperty('red1.visible', false);
	setProperty('red2.visible', false);
end

function onEvent(name, value1, value2)
	if name == "sabotage" then
		if value2 == "yes" then
			if value1 == "red" then
				setProperty('red.visible', true);
				setProperty('red1.visible', false);
				setProperty('red2.visible', false);
			end
		elseif value2 == "yes1" then
			if value1 == "red" then
				setProperty('red.visible', false);
				setProperty('red1.visible', true);
				setProperty('red2.visible', false);
			end
		elseif value2 == "yes2" then
			if value1 == "red" then
				setProperty('red.visible', false);
				setProperty('red1.visible', false);
				setProperty('red2.visible', true);
			end
		elseif value2 == "no" then
			if value1 == "red" then
				setProperty('red.visible', false);
				setProperty('red1.visible', false);
				setProperty('red2.visible', false);
			end
		end
	end
end