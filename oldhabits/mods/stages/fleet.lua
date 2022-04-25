local followchars = true
local xx = 960
local yy = 660
local xx2 = 960
local yy2 = 660
local ofs = 30
local del = 0
local del2 = 0
local bgs = {'fleet', 'sonic'}

function onCreate()
	makeAnimatedLuaSprite('fx', 'bg/vintage', 0, 0)
	addAnimationByPrefix('fx', 'idle', 'idle', 16, true)
	scaleObject('fx', 3, 3)
	setObjectCamera('fx', 'camHUD')
	objectPlayAnimation('fx', 'idle', true)
	setProperty('fx.alpha', 0)

	for i = 1,2 do
		makeLuaSprite(bgs[i], 'bg/'..bgs[i], 0, 0)
		addLuaSprite(bgs[i], false)
	end
	addCharacterToList('fleetway', 'boyfriend')
	precacheSound('stat')

	setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic')
end

function onUpdatePost()

if curStep == 506 then
	setBlendMode('boyfriend', 'screen')
	noteTweenX('l', 0, 412, 0.8, 'smootherStepOut')
	noteTweenX('d', 1, 524, 0.9, 'smootherStepOut')
	noteTweenX('u', 2, 636, 1, 'smootherStepOut')
	noteTweenX('r', 3, 748, 1.1, 'smootherStepOut')
	noteTweenX('l1', 4, 412, 0.8, 'smootherStepOut')
	noteTweenX('d2', 5, 524, 0.9, 'smootherStepOut')
	noteTweenX('u3', 6, 636, 1, 'smootherStepOut')
	noteTweenX('l4', 7, 748, 1.1, 'smootherStepOut')
	noteTweenAlpha('a', 0, 0, 0.8, 'smootherStepOut')
	noteTweenAlpha('e', 1, 0, 0.9, 'smootherStepOut')
	noteTweenAlpha('p', 2, 0, 1, 'smootherStepOut')
	noteTweenAlpha('h', 3, 0, 1.1, 'smootherStepOut')
end

if curStep == 704 then
setBlendMode('boyfriend', 'screen')
end

end

function onCreatePost()
	setObjectOrder('boyfriendGroup', 15)
	setObjectOrder('dadGroup', 16)
	setObjectOrder('gfGroup', 17)
setBlendMode('boyfriend', 'screen')
setBlendMode('dad', 'screen')
setBlendMode('gf', 'screen')
end

function onSongStart()
	addLuaSprite('fx', true)
end

function goodNoteHit()
if noteType == 'GF Sing' or gfSection == true and mustHitSection == true then
	setProperty('gf.alpha', 0.5)
	doTweenAlpha('onbackgf', 'gf', 0, 1, 'linear')
	end
end

function noteMiss()
    health = getProperty('health')
       if getProperty('health') < 0.1 then
           setProperty('health', health+ 0.0475);
    end
end

function opponentNoteHit()
    health = getProperty('health')
       if getProperty('health') > 0.1 then
           setProperty('health', health- 0.023);
   end
	setProperty('dad.alpha', 0.5)
	doTweenAlpha('onback', 'dad', 0, 1, 'linear')
end

function onUpdate(elapsed)

if curStep == 497 or curStep == 501 or curStep == 505 or curStep == 506 or curStep == 507 or curStep == 508 or curStep == 509 or curStep == 510 or curStep == 511 then
	setProperty('fx.alpha', 0.9)
	doTweenAlpha('fleetON', 'fx', 0, 1, 'linear')
	playSound('stat', 0.1)
end

	if modchart == true then
		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
		end
	end
	if followchars == true then
		if mustHitSection == false then
		  if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
			triggerEvent('Camera Follow Pos',xx-ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
			triggerEvent('Camera Follow Pos',xx+ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singUP' then
			triggerEvent('Camera Follow Pos',xx,yy-ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
			triggerEvent('Camera Follow Pos',xx,yy+ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
			triggerEvent('Camera Follow Pos',xx-ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
			triggerEvent('Camera Follow Pos',xx+ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
			triggerEvent('Camera Follow Pos',xx,yy-ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
			triggerEvent('Camera Follow Pos',xx,yy+ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		else
		  if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
			triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
			triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
			triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
			triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
			triggerEvent('Camera Follow Pos',xx2,yy2)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx2,yy2)
		  end
		end
	else
		triggerEvent('Camera Follow Pos','','')
	end
end

function onStartCountdown()
	setProperty('gf.alpha', 0)
	setProperty('iconP2.alpha', 0)
	setProperty('dad.alpha', 0)

	return Function_Continue
end

function fleetON()
	setProperty('fx.alpha', 0.8)
	setProperty('sonic.alpha', 0)
	doTweenAlpha('fleetON', 'fx', 0, 1, 'linear')
	playSound('stat', 0.3)
	triggerEvent('Change Character', 0, 'fleetway')
end

function fleetOFF()
	setProperty('fx.alpha', 0.8)
	setProperty('sonic.alpha', 1)
	doTweenAlpha('fleetON', 'fx', 0, 1, 'linear')
	playSound('stat', 0.3)
	triggerEvent('Change Character', 0, 'sonic')
end

function onGameOver()
	modchart = false
	return Function_Continue;
end

function onBeatHit()
if curStep > 512 then

    local luckyRoll = math.random(1, 50)
    local luckyRoll2 = math.random(1, 50)
    
    if (luckyRoll >= 49) then
    setProperty('fx.alpha', 0.3)
	doTweenAlpha('fleetON', 'fx', 0, 1, 'linear')
	playSound('stat', 0.1)
   end
end
end