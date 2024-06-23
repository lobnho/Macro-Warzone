----------------------------------------------------QUICKSTARTGUIDE------------------------------------------------------


-- how to use with lghub:
-- Copy and Paste the script to C:/ or D:/ etc 
-- Go to G-Hub or LGS , create new script and  add the code line below
-- dofile[[C:\MacroWarzone.lua]] 
-- press ctrl+s to save


-------------------------------------------------------100%Recoilversion------------------------------------------------------

			         ---------------------------READ PLEASE---------------------------
--(-100).		         Please read tooltips and comments to understand code
--(-1). Please remember this is a simple no recoil script and can only move your mouse down vertically  at a varying speed and horizontally one way.
--0. YOU CAN KEEP THE SCRIPT OPEN IN THE BACKGROUND(THIS PAGE) AND YOU CAN CHANGE SETTINGS.  AFTER CHANGING SETTINGS PRESS "CTRL+S" TO SAVE AND IT WILL APPLY NEW VALUES
--1. Play around with the REEcoil setting
--2. Press "CTRL+S"
--3. Press right click and leftclick, if your mouse moves down and you don't move it yourself. Congratulations the Script works
--4. You can now toggle HIGH recoil mode by pressing "CAPSLOK"/"scrolllock" check if you mouse goes down faster.(See Output log if it reads: "HIGH_Recoil=true", it is in highrecoil mode)
--5. You can now Toggle the script off completely by pressing "NUMLOK"
--6. You can change these two binds in the "BINDS" section of the script, do as the script says.
--7. If you want to change the speed of norecoil, change these values(NoRecoilMin,NoRecoilMax,SleepNRMin,SleepNRMax,NoRecoilMinHIGH,NoRecoilMaxHIGH,SleepNRMinHIGH,SleepNRMaxHIGH)
--7,1. if you don't want random numbers just choose the same numbers in max and min
--7,2. Settings are arranged in min and max, this means means, that you roll values inbetween your max and min value, this hopefully makes the script seem at bit more legit.
--11.If you want to change the Trigger speed of Rapidfire and RapidfireHIGH, change these values(PressSpeedMin, PressSpeedMax,NoRecoilRFMin,NoRecoilRFMax,SleepNRFMin,SleepNRFMax, and so on)
--12. If you wanna change binds like rapidfire or your ping button go to "BINDS" section, follow instructions.
--13. if you wanna remove Rapidfire go to "MAGIC AND WOODOO" and delete--"elseif  IsMouseButtonPressed(Rapidfirebutton) then Autotag() RapidFire()"
--14. if you want the script to only tag enemies when you shoot delete this-- "NoRecoil() elseif  IsMouseButtonPressed(Rapidfirebutton) then Autotag() RapidFire()" and Input 1000 to AUTOTAGONLY, Like this: "AUTOTAGONLY=1000"
--15. if you want to autotag faster or slower change(AltPressSpeedMin,AltPressSpeedMax,InBetweenSpeedMin,InBetweenSpeedMax)
--16. to delete Script delete everyuthiong in here and close the editor

------------------------------------------------------SETTINGS AND VALUES------------------------------------------------------
	      ----------------------------------------------Simple settings----------------------------------------------
--Adjust for more or less recoil
--1000 is default, 2000 is double as fast, 500 is half as fast and 2547 is 2.547 times as fast
REEcoil=1000		--<Change that if recoil is too much or too little
	      -----------------------------------------------------------------------------------------------------------------
 
 
 
 
 
 
 
 
	      ----------------------------------------------Not so Advanced, Advanced Settings----------------------------------------------
---------------------------NoRecoil---------------------------
         -----------------tuned for MP7-----------------
								
NoRecoilMin=1				--Change this			<-this is how long you mouse travels from one loop/rotation of the noracoil function
NoRecoilMax=1				--Change this
		
HorizontalRecoilModifier=0		--try this if your gun only moves to one side, I will not be making profiles for this script, but you can keep it open and change values for each gun when in game.
 
SleepNRMin=16				--Change this			<-this is how long between loops, both make your mouse go faster downwards
SleepNRMax=20			--Change this
		
---------------------------NoRecoilHIGH/100%Recoil---------------------------
--Remember this is a DIY script, you need to input values yourself 
GunRPM=666			--Change this, Input your weapons RPM, this makes the script pull down once for every shot, for smooth recoil just increase the value, all it does is to convert rounds per minute to ms per round
 
GunCenterspeed = 300	--This will determine how long you can stop shooting without resetting the recoil pattern, this means you can burst your full auto better
												
	--edit this, from left to right the names determine the axis of movement, you can add more just copy/pasta
recoilPattern = {	{ x = 0, y = 3 }, 	{ x = 0, y = 3 },	{ x = 0, y = 3 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
			{ x = 0, y = 0 }, 	{ x = 0, y = 0 },	{ x = 0, y = 0 },
											       }
 
--to actually make it 100% No-recoil you have to test it out ingame and type values in.
--Also REEcoil now works with 100% Norecoil
 
---------------------------Tagging settings(ms)--------------------------- this is also a recoil predelay, the longer this takes, the longer it takes for your no recoil to start
AltPressSpeedMin=20			--Change this			
AltPressSpeedMax=50			--Change this			<-this is the delay between pressing and releasing the alt button
	
InBetweenSpeedMin=20		--Change this			<-this is the delay between button presses
InBetweenSpeedMax=70		--Change this
 
 
---------------------------Rapidfire---------------------------
     -----------------tuned for FAL/Pistol-----------------
PressSpeedMin=15			--Change this			<-this is the delay between pressing and releasing left click
PressSpeedMax=25			--Change this
		
NoRecoilRFMin=3			--Change this			<-this is recoil reduction
NoRecoilRFMax=5			--Change this
	
 
SleepNRFMin=75			--Change this			<-this is the delay between clicks
SleepNRFMax=105			--Change this
 
---------------------------RapidfireHIGH---------------------------
            -----------------tuned for Famas-----------------
PressSpeedMinHIGH=15		--Change this			<-this is the delay between pressing and releasing left click
PressSpeedMaxHIGH=25		--Change this
		
NoRecoilRFMinHIGH=5		--Change this			<-this is recoil reduction
NoRecoilRFMaxHIGH=7		--Change this
 
 
SleepNRFMinHIGH=45			--Change this			<-this is the delay between clicks
SleepNRFMaxHIGH=55		--Change this
		
------------------------------------------------------BINDS------------------------------------------------------
 
--Enable/Disable, only scrollock capslock and numlock work for this bind: "scrolllock", "capslock", "numlock", you canalso delete: "	if IsKeyLockOn(LockKey)then		", if you want it all at all times.
LockKey="numlock"
 
--LowRecoil/HighRecoil, only scrollock capslock and numlock work for this bind: "scrolllock", "capslock", "numlock",/
--Toggle
REcoilHIGHTogggle= "scrolllock"
 
--Norecoil bind									Im too lazy to make an alternative bind to keyboard, if you ask nicely and i have time i might do it for you.
LC=1		--Left click 1 is the click type this means 3 will be right click(Only works for mousebuttons)
RC=3	--right click
 
--Tagbind, should work for all keyboard buttons, remember to use left or right for modifiers: "lalt", "lshift"
Autotagmfer="lalt"		
 
--Rapidfirebind
LCRF=1				--just leftclick
Rapidfirebutton=4		-- tis my forward key for thumb use, tried to make arg events work to give more keybind possibilities, but i always found they had a weird delay/rythm to them making them unreliable.
 
 
---------------------------Stupid math, please don't touch---------------------------
 
Sensrelative=REEcoil/1000
 
--RPMcalc
RPMCLC=GunRPM/60000
KMNPRM=1/RPMCLC
 
--Others
ShootTime = -GunCenterspeed-1
recoil_count = # recoilPattern
Last = 1
 
AUTOTAGONLY=2	
 
------------------------------------------------------FUNCTIONS------------------------------------------------------	
     --don't see any reason why you should touch anything below this point, but be my guest.	
EnablePrimaryMouseButtonEvents(true);	
 
function RapidFire()	
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
 
function Autotag()
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
 
function NoRecoil()
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
	i = Last else
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
break end
	i = i + 1
end
end
end
 
------------------------------------------------------MAGIC AND WOODOO------------------------------------------------------
function OnEvent(event, arg)	
 
--HIGHRecoiltoggle on/off
if IsKeyLockOn(REcoilHIGHTogggle)then
	HIGH_Recoil=true
else
	HIGH_Recoil=false
end
 
 
if IsKeyLockOn(LockKey)then		--This toggles Recoil on/off
 
	if IsMouseButtonPressed(RC)then	 				--Loop for ADS. Primes Norecoil, Autotag and rapidfire
						                     
		repeat
	if IsMouseButtonPressed(LC)  then				--Norecoil
		seconds=GetRunningTime()
			seconds1= seconds/1000
			Autotag()					
		NoRecoil()
		
	elseif  IsMouseButtonPressed(Rapidfirebutton) then		--Rapidfire
		seconds=GetRunningTime()
			seconds1= seconds/1000
			Autotag()				
		RapidFire()		
			
		end
	until not IsMouseButtonPressed(RC)				--end of Priming loop
	end	
end	
end
