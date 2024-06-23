----------------------------------------------------QUICKSTARTGUIDE------------------------------------------------------

-- how to use with lghub:
-- Copy and Paste the script to C:/ or D:/ etc 
-- Go to G-Hub or LGS , create new script and  add the code line below
-- data = dofile[[C:\MacroWarzone.lua]] 
-- press ctrl+s to save

-- Adjust settings and press "CTRL+S" to apply new values.
-- Adjust recoil speed with REEcoil.
-- Toggle high recoil mode with "CAPSLOCK"/"SCROLLLOCK".
-- Adjust norecoil speed with NoRecoilMin, NoRecoilMax, SleepNRMin, SleepNRMax.
-- Adjust rapidfire and tagging speeds as needed.
-- Binds: Autotag = "lalt".

-- Note: Enable/disable rapidfire with "Rapidfire = true/false", norecoil with "NoRecoil = true/false". Autotag is triggered with "lalt".

REEcoil=1000 -- Adjust for more or less recoil

-- NoRecoil Settings
NoRecoilMin=1 -- Minimum recoil compensation
NoRecoilMax=1 -- Maximum recoil compensation
HorizontalRecoilModifier=0 -- Adjust if gun moves sideways
SleepNRMin=16 -- Minimum time between recoil adjustments
SleepNRMax=20 -- Maximum time between recoil adjustments

-- NoRecoilHIGH Settings
GunRPM=666 -- RPM of the gun for recoil compensation
GunCenterspeed = 300 -- Time to reset recoil pattern
recoilPattern = { -- Recoil pattern for full recoil control
  { x = 0, y = 3 }, { x = 0, y = 3 }, { x = 0, y = 3 },
  { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
  { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
  { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
  { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
  { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
  { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
  { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
  { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }
}

-- Tagging Settings (ms)
AltPressSpeedMin=20 -- Minimum time between tag presses
AltPressSpeedMax=50 -- Maximum time between tag presses
InBetweenSpeedMin=20 -- Minimum time between tag sequences
InBetweenSpeedMax=70 -- Maximum time between tag sequences

-- Rapidfire Settings
PressSpeedMin=15 -- Minimum time between mouse clicks
PressSpeedMax=25 -- Maximum time between mouse clicks
NoRecoilRFMin=3 -- Minimum recoil compensation for rapidfire
NoRecoilRFMax=5 -- Maximum recoil compensation for rapidfire
SleepNRFMin=75 -- Minimum time between rapidfire clicks
SleepNRFMax=105 -- Maximum time between rapidfire clicks

-- RapidfireHIGH Settings
PressSpeedMinHIGH=15 -- Minimum time between mouse clicks (high recoil)
PressSpeedMaxHIGH=25 -- Maximum time between mouse clicks (high recoil)
NoRecoilRFMinHIGH=5 -- Minimum recoil compensation for rapidfire (high recoil)
NoRecoilRFMaxHIGH=7 -- Maximum recoil compensation for rapidfire (high recoil)
SleepNRFMinHIGH=45 -- Minimum time between rapidfire clicks (high recoil)
SleepNRFMaxHIGH=55 -- Maximum time between rapidfire clicks (high recoil)

-- Binds
LC=1 -- Left mouse button
RC=3 -- Right mouse button
Autotagmfer="lalt" -- Bind for tagging

-- Mathematical Calculations
Sensrelative=REEcoil/1000
RPMCLC=GunRPM/60000
KMNPRM=1/RPMCLC
ShootTime = -GunCenterspeed-1
recoil_count = #recoilPattern
Last = 1
AUTOTAGONLY=2

-- Variables for activation/deactivation control
Rapidfire=false
NoRecoil=false
Autotag=true -- Set to true for default activation

-- Functions
EnablePrimaryMouseButtonEvents(true)

function RapidFire()
	if (NoRecoil == true) then -- Check if NoRecoil is enabled
		if (HIGH_Recoil==false) then
			repeat
				PressMouseButton(LCRF)
				Sleep(math.random(PressSpeedMin,PressSpeedMax))
				ReleaseMouseButton(LCRF)
				MoveMouseRelative(0,math.random(NoRecoilRFMin,NoRecoilRFMax)*Sensrelative)
				Sleep(math.random(SleepNRFMin,SleepNRFMax)) 
				MoveMouseRelative(0,math.random(NoRecoilRFMin,NoRecoilRFMax)*Sensrelative)
				x="no"
				seconds=GetRunningTime()
			until not IsMouseButtonPressed(Rapidfirebutton)
			seconds1= seconds/1000
		else
			repeat
				PressMouseButton(LCRF)
				Sleep(math.random(PressSpeedMinHIGH,PressSpeedMaxHIGH))
				ReleaseMouseButton(LCRF)
				MoveMouseRelative(0,math.random(NoRecoilRFMinHIGH,NoRecoilRFMaxHIGH)*Sensrelative)
				Sleep(math.random(SleepNRFMinHIGH,SleepNRFMaxHIGH)) 
				MoveMouseRelative(0,math.random(NoRecoilRFMinHIGH,NoRecoilRFMaxHIGH)*Sensrelative)
				x="no"
				seconds=GetRunningTime()
			until not IsMouseButtonPressed(Rapidfirebutton)
			seconds1= seconds/1000
		end
	end
end

function Autotag()
	if (Autotag == true) then -- Check if Autotag is enabled
		if (x=="no") then
			if (seconds1<seconds2)then
				Sleep(1)
			else
				PressKey(Autotagmfer)		
				Sleep(math.random(AltPressSpeedMin,AltPressSpeedMax))
				ReleaseKey(Autotagmfer)
				Sleep(math.random(InBetweenSpeedMin,InBetweenSpeedMax))
				PressKey(Autotagmfer)
				Sleep(math.random(AltPressSpeedMin,AltPressSpeedMax))
				ReleaseKey(Autotagmfer)
				Sleep(2)
				seconds2 = seconds1 + AUTOTAGONLY
			end
		else
			PressKey(Autotagmfer)		
			Sleep(math.random(AltPressSpeedMin,AltPressSpeedMax))
			ReleaseKey(Autotagmfer)
			Sleep(math.random(InBetweenSpeedMin,InBetweenSpeedMax))
			PressKey(Autotagmfer)
			Sleep(math.random(AltPressSpeedMin,AltPressSpeedMax))
			ReleaseKey(Autotagmfer)
			Sleep(2)
			seconds2 = seconds1 + AUTOTAGONLY
		end
	end
end

function NoRecoil()
	if (NoRecoil == true) then -- Check if NoRecoil is enabled
		if (HIGH_Recoil==false) then
			repeat
				MoveMouseRelative(HorizontalRecoilModifier,math.random(NoRecoilMin,NoRecoilMax)*Sensrelative)
				Sleep(math.random(SleepNRMin,SleepNRMax))
				x="no"
				seconds=GetRunningTime()
			until not IsMouseButtonPressed(LC)
			seconds1= seconds/1000
		else
			if (GetRunningTime() - ShootTime < GunCenterspeed) and (Last<= recoil_count) then
				i = Last 
			else
				i = 1
			end
			while i <= recoil_count do
				Sleep(KMNPRM)
				if not IsMouseButtonPressed(1) then
					Last = i
					ShootTime = GetRunningTime()		
					break
				end	
				MoveMouseRelative( recoilPattern[i].x*Sensrelative, recoilPattern[i].y*Sensrelative)
				if not IsMouseButtonPressed(LC) then 
					break 
				end
				i = i + 1
			end
		end
	end
end

function OnEvent(event, arg)
	if event == "MOUSE_BUTTON_PRESSED" and arg == RC then
		repeat
			PressMouseButton(LC)
			NoRecoil()
			if IsMouseButtonPressed(LC) then
				Autotag()
				RapidFire()
			end
		until not IsMouseButtonPressed(RC)
	end
end
