function onCreatePost()
makeLuaText('text', 'PRESS SPACE TO LOOK INSIDE', 1520, -120, 535)
setTextSize('text', 30)
end

function onUpdate()

if curStep == 1 then
addLuaText('text')
end

if curStep == 5 then
doTweenAlpha('gonetextgoaway', 'text', 0, 0.3, 'smootherStepOut')
end

if curStep > 0 and curStep < 128 and keyJustPressed('space') then
loadSong('lost-my-mind','hard')
end

if curStep == 1 then
	noteTweenY('ae', 0, -50, 0.1, 'expoIn')
	noteTweenY('ea', 1, -50, 0.2, 'expoIn')
	noteTweenY('ps', 2, -50, 0.3, 'expoIn')
	noteTweenY('hc', 3, -50, 0.4, 'expoIn')
	noteTweenAlpha('aee', 0, 0, 0.2, 'smootherStepOut')
	noteTweenAlpha('eaa', 1, 0, 0.3, 'smootherStepOut')
	noteTweenAlpha('pss', 2, 0, 0.4, 'smootherStepOut')
	noteTweenAlpha('hcd', 3, 0, 0.5, 'smootherStepOut')
end

if curStep == 10 then
					for i = 0, getProperty('opponentStrums.length')-1 do
				setPropertyFromGroup('opponentStrums', i, 'texture', 'Majin_Notes');
			end
			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'Majin_Notes');
				end
			end
end

if curStep > 387 and curStep < 1968 then
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'031479')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'camHUD')
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.2)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
end

if curStep == 384 then
setProperty('updateTime', false)
doTweenColor('timeBar', 'timeBar', '1f2080', 0.5, 'linear'); 
doTweenColor('timeTxt', 'timeTxt', '1f2080', 0.5, 'linear'); 
setTextString('timeTxt', 'Infinite')
	noteTweenY('aeF', 0, 50, 0.1, 'expoOut')
	noteTweenY('eaA', 1, 50, 0.2, 'expoOut')
	noteTweenY('psX', 2, 50, 0.3, 'expoOut')
	noteTweenY('hcZ', 3, 50, 0.4, 'expoOut')
	noteTweenAlpha('aeeE', 0, 100, 0.2, 'smootherStepIn')
	noteTweenAlpha('eaaA', 1, 100, 0.3, 'smootherStepIn')
	noteTweenAlpha('pssS', 2, 100, 0.4, 'smootherStepIn')
	noteTweenAlpha('hcdF', 3, 100, 0.5, 'smootherStepIn')
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'0008eb')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'camHUD')
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
					for i = 0, getProperty('opponentStrums.length')-1 do
				setPropertyFromGroup('opponentStrums', i, 'texture', 'Majin_Notes');
			end
			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'Majin_Notes');
				end
			end
			for i = 0, getProperty('playerStrums.length')-1 do
			setPropertyFromGroup('playerStrums', i, 'texture', 'Majin_Notes');
			end
			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'Majin_Notes');
				end
			end
end

if curStep == 1968 then
setProperty('updateTime', true)
doTweenColor('timeBar', 'timeBar', 'ffffff', 0.01, 'linear'); 
doTweenColor('timeTxt', 'timeTxt', 'ffffff', 0.01, 'linear'); 
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'0008eb')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'camHUD')
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.5)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
					for i = 0, getProperty('opponentStrums.length')-1 do
				setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets');
			end
			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets');
				end
			end
			for i = 0, getProperty('playerStrums.length')-1 do
			setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
			end
			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets');
				end
			end
end

end