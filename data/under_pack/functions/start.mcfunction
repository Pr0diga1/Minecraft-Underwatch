#adds the red team
team add uRed
team modify uRed friendlyFire false
team modify uRed color red
#adds the blue team
team add uBlue
team modify uBlue friendlyFire false
team modify uBlue color blue
#white team
team add white
team modify white friendlyFire false
team modify white color white

#adds the red temp team
team add redTemp
team modify redTemp friendlyFire false
team modify redTemp color red
#adds the blue teamp team
team add blueTemp
team modify blueTemp friendlyFire false
team modify blueTemp color blue

#healthbar tracking
scoreboard objectives add heart health {"text":"\u2764","color":"#FF0000"}
scoreboard objectives setdisplay belowName heart
scoreboard objectives setdisplay list heart

#add a death objective so deaths can be tracked
scoreboard objectives add uDeaths deathCount
#deathtimer
scoreboard objectives add deathTimer dummy
scoreboard objectives add deathTimerBuffer dummy
scoreboard objectives add deathTimerBufferBuffer dummy

#locking
scoreboard objectives add locked1 dummy
scoreboard objectives add locked2 dummy

#add gazebo as a trigger
scoreboard objectives add gazebo trigger

#add playernum
scoreboard objectives add player_num dummy
#add buffer
scoreboard objectives add buffer dummy

#add points
scoreboard objectives add points dummy
#add timer
scoreboard objectives add timer dummy
#add swag
scoreboard objectives add swag dummy
#add team
scoreboard objectives add team dummy
#add matchmake
scoreboard objectives add matchmake dummy

#kills
scoreboard objectives add Kills playerKillCount

#objective to track what class you are
scoreboard objectives add class dummy

#buffer objective for changing classes
scoreboard objectives add classCheck dummy

#adds levels tracker
scoreboard objectives add levels xp

#adds constants and modifiers
scoreboard objectives add constant dummy
scoreboard objectives add modifier dummy
scoreboard objectives add buffer dummy
scoreboard objectives add num dummy

# Adds debug scoreboard
#scoreboard players set debug buffer 0

#arrow death timer
scoreboard objectives add arrowTimer dummy

#Is player on point
scoreboard objectives add onPoint dummy
scoreboard objectives add cantCap dummy

#add the reset
scoreboard objectives add reset minecraft.used:minecraft.carrot_on_a_stick

#trigger Reset
scoreboard objectives add Reset trigger

#teams triggers
scoreboard objectives add red trigger
scoreboard objectives add blue trigger

#adds constant and any needed multipliers
scoreboard players set TickToSecond constant 20
scoreboard players set OneHundred constant 100
scoreboard players set TheNumberTen constant 10
scoreboard players set TheNumberFive constant 5
scoreboard players set TheNumberThree constant 3
scoreboard players set TheNumberTwo constant 2
scoreboard players set TheNumberZero constant 0
scoreboard players set everyOther constant 1
scoreboard players set minusOne constant -1
scoreboard players set 4 num 4
scoreboard players set 40 num 40

#all of the triggers for the classes
scoreboard objectives add alchemist trigger
scoreboard objectives add scientist trigger
scoreboard objectives add lumberjack trigger
scoreboard objectives add rogue trigger
scoreboard objectives add ninja trigger
scoreboard objectives add archer trigger
scoreboard objectives add wizard trigger
scoreboard objectives add engineer trigger
scoreboard objectives add paladin trigger
scoreboard objectives add bulwark trigger
scoreboard objectives add mermaid trigger
scoreboard objectives add elemental trigger
scoreboard objectives add dark_soul trigger
scoreboard objectives add gun_man trigger
scoreboard objectives add cyborg trigger

#various triggers
scoreboard objectives add red trigger
scoreboard objectives add blue trigger
scoreboard objectives add leave trigger

#map triggers
scoreboard objectives add gazebo trigger
scoreboard objectives add park trigger
scoreboard objectives add ruin trigger
scoreboard objectives add res trigger
scoreboard objectives add city trigger

#adds trackers for abilities and ults
scoreboard objectives add movement dummy
scoreboard objectives add ability1 dummy
scoreboard objectives add ability2 dummy
scoreboard objectives add ability3 dummy
scoreboard objectives add ability4 dummy
scoreboard objectives add ability5 dummy
scoreboard objectives add ability6 dummy
scoreboard objectives add ability7 dummy
scoreboard objectives add ability8 dummy

#ray casting
scoreboard objectives add ray_steps dummy
scoreboard objectives add ray_success dummy

#Ult Charging
scoreboard objectives add ultKills playerKillCount
scoreboard objectives add ultKillsBuffer dummy
scoreboard objectives add ultTicks dummy
scoreboard objectives add ultDamage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add ultCharge dummy
scoreboard objectives add ultPercent dummy
scoreboard objectives add ultPercentBuffer dummy

#class specific scoreboards
#alc
scoreboard objectives add alchemistUltActive dummy
scoreboard objectives add alchemistUltTiming dummy
scoreboard objectives add alchemistUltTimingBuffer dummy

#archer
scoreboard objectives add archerultactive dummy
scoreboard objectives add archerRay dummy

#engineer
scoreboard objectives add engineer_wd dummy
scoreboard objectives add engineerWallBuffer dummy
scoreboard objectives add engineerdamage minecraft.custom:damage_dealt
scoreboard objectives add engineercap dummy
scoreboard objectives add engineertimer dummy
scoreboard objectives add engineerTurretDuration dummy
scoreboard objectives add engineerTurretDurationBuffer dummy
scoreboard objectives add engineerTurretEye dummy
scoreboard objectives add engineerTurretEyeBuffer dummy
scoreboard objectives add engineerViagraTimer dummy
scoreboard objectives add engineerViagraBuffer dummy
scoreboard objectives add engineerWallEye dummy
scoreboard objectives add engineer_damage_taken minecraft.custom:minecraft.damage_taken

#knight
scoreboard objectives add blockIsActive dummy
scoreboard objectives add knightbomb dummy

#lumberjack
scoreboard objectives add LumberjackMotionX dummy
scoreboard objectives add LumberjackMotionY dummy
scoreboard objectives add LumberjackMotionZ dummy
scoreboard objectives add lumberjack_axe_slam dummy
scoreboard objectives add lumberjack_axe_slam2 dummy
scoreboard objectives add lumberjack_axe_slam3 dummy
scoreboard objectives add lumberjack_ult_casts dummy
scoreboard objectives add lumberjack_sweep dummy

#ninja
scoreboard objectives add ninjaHyperventilate dummy
scoreboard objectives add ninjaHyperventilateBuffer dummy
scoreboard objectives add ninjaMotionX dummy
scoreboard objectives add ninjaMotionY dummy
scoreboard objectives add ninjaMotionZ dummy
scoreboard objectives add ninjaRay dummy
scoreboard objectives add ninjaUltActive dummy
scoreboard objectives add ninjaUltTiming dummy

#paladin
scoreboard objectives add paladinIsBlocking dummy
scoreboard objectives add shieldDelay dummy
scoreboard objectives add shieldStatus dummy
scoreboard objectives add paladinUltActive dummy
scoreboard objectives add paladinUltTiming dummy
scoreboard objectives add paladinUltTimingBuffer dummy

#rogue
scoreboard objectives add damageTaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add rogueUltActive dummy
scoreboard objectives add rogueUltTiming dummy
scoreboard objectives add rogueUltTimingBuffer dummy

#scientist
scoreboard objectives add scientistDamageReload dummy
scoreboard objectives add scientistHealingReload dummy
scoreboard objectives add scientistJump dummy
scoreboard objectives add scientistBowFired minecraft.used:minecraft.bow
scoreboard objectives add scientistBowFired2 minecraft.used:minecraft.bow
scoreboard objectives add hitByFreeze dummy

#wizard
scoreboard objectives add wizardCurse dummy
scoreboard objectives add wizardCurseBuffer dummy
scoreboard objectives add wizardDistance dummy
scoreboard objectives add wizardHit dummy
scoreboard objectives add wizardRedHit dummy
scoreboard objectives add wizardBlueHit dummy
scoreboard objectives add wizardFireball dummy
scoreboard objectives add wizardMotionX dummy
scoreboard objectives add wizardMotionY dummy
scoreboard objectives add wizardMotionZ dummy
scoreboard objectives add wizardtime dummy
scoreboard objectives add wizardRide dummy
scoreboard objectives add wizardRideTimer dummy

#elemental
scoreboard objectives add elementalBar dummy
scoreboard objectives add elementalBarBuffer dummy
scoreboard objectives add elementalBarTimer dummy
scoreboard objectives add elementalFireTimer dummy
scoreboard objectives add elementalFireBuffer dummy
scoreboard objectives add elementalFireHit dummy
scoreboard objectives add elementalWindTimer dummy
scoreboard objectives add elementalWaterState dummy
scoreboard objectives add elementalWaterHit dummy
scoreboard objectives add elementalEarthTimer dummy
scoreboard objectives add elementalDistance dummy

#mermaid
scoreboard objectives add mermaidRay dummy
scoreboard objectives add mermaidmist dummy
scoreboard objectives add mermaidmistbuffer dummy
scoreboard objectives add mermaidtide dummy
scoreboard objectives add mermaidheal dummy
scoreboard objectives add mermaidhealbuffer dummy
scoreboard objectives add mermaidtoggle dummy 
scoreboard objectives add mermaiddamage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add mermaidDetect dummy
scoreboard objectives add mermaidburst dummy

#cyborg
scoreboard objectives add cyborgcap dummy
scoreboard objectives add cyborgtimer dummy

#dark soul
scoreboard objectives add slamTimer dummy
scoreboard objectives add darkEye dummy
scoreboard objectives add darkEyeBuffer dummy

scoreboard players add version_number1 buffer 1
execute if score version_number1 buffer matches 10 run scoreboard players add version_number2 buffer 1
execute if score version_number1 buffer matches 10 run scoreboard players set version_number1 buffer 0
execute if score version_number2 buffer matches 0 run scoreboard players set version_number2 buffer 0

tellraw @a [{"text":"Version "},{"text":"1.","color":"yellow","bold":true},{"score":{"name":"version_number2","objective":"buffer"},"color":"yellow","bold":true},{"text":".","color":"yellow","bold":true},{"score":{"name":"version_number1","objective":"buffer"},"color":"yellow","bold":true},{"text":" of the best overwatch clone, has just been uploaded"}]
