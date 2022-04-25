function opponentNoteHit()
if curStep > 1880 then
            health = getProperty('health')
       if getProperty('health') > 1 then
           setProperty('health', health- 0.046);
   end
   end
end


function onUpdate()


if curStep == 1792 then
doTweenZoom('00st', 'camGame', 1.7, 6, 'quadInOut')
end

if curStep == 1830 then
setProperty('gf.alpha', 100)
setCharacterX('dad', -450)
end



if curStep == 1846 then
	noteTweenY('ae', 0, -50, 0.1, 'expoIn')
	noteTweenY('ea', 1, -50, 0.2, 'expoIn')
	noteTweenY('ps', 2, -50, 0.3, 'expoIn')
	noteTweenY('hc', 3, -50, 0.4, 'expoIn')
	noteTweenAlpha('aee', 0, 0, 0.2, 'smootherStepOut')
	noteTweenAlpha('eaa', 1, 0, 0.3, 'smootherStepOut')
	noteTweenAlpha('pss', 2, 0, 0.4, 'smootherStepOut')
	noteTweenAlpha('hcd', 3, 0, 0.5, 'smootherStepOut')
end

if curStep == 1850 then
					for i = 0, getProperty('opponentStrums.length')-1 do
				setPropertyFromGroup('opponentStrums', i, 'texture', 'Majin_Notes');
			end
			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'Majin_Notes');
				end
			end
end
 
if curStep > 1885 then
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

if curStep == 1880 then
	noteTweenY('aeF', 0, 50, 0.1, 'expoOut')
	noteTweenY('eaA', 1, 50, 0.2, 'expoOut')
	noteTweenY('psX', 2, 50, 0.3, 'expoOut')
	noteTweenY('hcZ', 3, 50, 0.4, 'expoOut')
	noteTweenAlpha('aeeE', 0, 100, 0.2, 'smootherStepIn')
	noteTweenAlpha('eaaA', 1, 100, 0.3, 'smootherStepIn')
	noteTweenAlpha('pssS', 2, 100, 0.4, 'smootherStepIn')
	noteTweenAlpha('hcdF', 3, 100, 0.5, 'smootherStepIn')
	doTweenColor('timeBar', 'timeBar', '1f2080', 0.1, 'linear'); 
doTweenColor('timeTxt', 'timeTxt', '1f2080', 0.1, 'linear'); 
setProperty('health',1)
triggerEvent('Change Character', 1, 'eggmanwithmajin');
			   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1920,1080,'0008eb')
	      addLuaSprite('flash', true);
		  setObjectCamera('flash', 'camHUD')
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,0.5,'linear')
		addLuaSprite('vg', true);
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
			
						for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
				setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', value2);
				end
			end
			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', value2);
				end
			end
end 

if curStep == 2128 then
        setProperty('iconP2.angle', 20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');
noteTweenY('no1', 0, 25, 0.2, 'elasticOut')
noteTweenY('no2', 1, 75, 0.2, 'elasticOut')
noteTweenY('no3', 2, 25, 0.2, 'elasticOut')
noteTweenY('no4', 3, 75, 0.2, 'elasticOut')
end

if curStep == 2129 then
        setProperty('iconP2.angle', -20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');
noteTweenY('no1', 0, 75, 0.2, 'elasticOut')
noteTweenY('no2', 1, 25, 0.2, 'elasticOut')
noteTweenY('no3', 2, 75, 0.2, 'elasticOut')
noteTweenY('no4', 3, 25, 0.2, 'elasticOut')
end

if curStep == 2131 then
        setProperty('iconP2.angle', 20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');
noteTweenY('no1', 0, 25, 0.2, 'elasticOut')
noteTweenY('no2', 1, 75, 0.2, 'elasticOut')
noteTweenY('no3', 2, 25, 0.2, 'elasticOut')
noteTweenY('no4', 3, 75, 0.2, 'elasticOut')
end

if curStep == 2132 then
        setProperty('iconP2.angle', -20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');
noteTweenY('no1', 0, 75, 0.2, 'elasticOut')
noteTweenY('no2', 1, 25, 0.2, 'elasticOut')
noteTweenY('no3', 2, 75, 0.2, 'elasticOut')
noteTweenY('no4', 3, 25, 0.2, 'elasticOut')
end

if curStep == 2134 then
        setProperty('iconP2.angle', 20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');
noteTweenY('no1', 0, 25, 0.2, 'elasticOut')
noteTweenY('no2', 1, 75, 0.2, 'elasticOut')
noteTweenY('no3', 2, 25, 0.2, 'elasticOut')
noteTweenY('no4', 3, 75, 0.2, 'elasticOut')
end

if curStep == 2135 then
        setProperty('iconP2.angle', -20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');
noteTweenY('no1', 0, 75, 0.2, 'elasticOut')
noteTweenY('no2', 1, 25, 0.2, 'elasticOut')
noteTweenY('no3', 2, 75, 0.2, 'elasticOut')
noteTweenY('no4', 3, 25, 0.2, 'elasticOut')
end

if curStep == 2136 then
        setProperty('iconP2.angle', 20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');
noteTweenY('no1', 0, 25, 0.2, 'elasticOut')
noteTweenY('no2', 1, 75, 0.2, 'elasticOut')
noteTweenY('no3', 2, 25, 0.2, 'elasticOut')
noteTweenY('no4', 3, 75, 0.2, 'elasticOut')
end

if curStep == 2137 then
        setProperty('iconP2.angle', -20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');
	noteTweenY('aeFS', 0, 50, 0.2, 'elasticOut')
	noteTweenY('eaAA', 1, 50, 0.2, 'elasticOut')
	noteTweenY('psXX', 2, 50, 0.2, 'elasticOut')
	noteTweenY('hcZZ', 3, 50, 0.2, 'elasticOut')
end

end

function onBeatHit()
if curStep > 1880 and curStep < 2121 then

    if curBeat % 1 == 0 then
        setProperty('iconP2.angle', 20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');
		
noteTweenY('no1', 0, 25, 0.2, 'elasticOut')
noteTweenY('no2', 1, 75, 0.2, 'elasticOut')
noteTweenY('no3', 2, 25, 0.2, 'elasticOut')
noteTweenY('no4', 3, 75, 0.2, 'elasticOut')
    end

    if curBeat % 2 == 0 then
        setProperty('iconP2.angle', -20);
        doTweenAngle('bip', 'iconP2', 0,0.2,'cubicOut');

noteTweenY('no1', 0, 75, 0.2, 'elasticOut')
noteTweenY('no2', 1, 25, 0.2, 'elasticOut')
noteTweenY('no3', 2, 75, 0.2, 'elasticOut')
noteTweenY('no4', 3, 25, 0.2, 'elasticOut')

    end
   end
end

