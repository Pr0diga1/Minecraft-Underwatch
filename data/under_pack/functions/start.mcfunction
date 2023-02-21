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
scoreboard objectives add constant dummy
scoreboard players set TickToSecond constant 20
scoreboard players set TheNumberTen constant 10
scoreboard players set TheNumberFive constant 5
scoreboard players set TheNumberThree constant 3
scoreboard players set TheNumberTwo constant 2
scoreboard players set TheNumberZero constant 0
scoreboard players set everyOther constant 1
scoreboard players set minusOne constant -1

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

#adds trackers for abilities and ults
scoreboard objectives add movement dummy
scoreboard objectives add ability1 dummy
scoreboard objectives add ability2 dummy
scoreboard objectives add ability3 dummy
scoreboard objectives add ability4 dummy
scoreboard objectives add ult dummy

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
scoreboard objectives add engineer_ult dummy
scoreboard objectives add engineerdamage minecraft.custom:damage_dealt
scoreboard objectives add engineercap dummy
scoreboard objectives add engineertimer dummy

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

#elemental
scoreboard objectives add elementalBar dummy
scoreboard objectives add elementalBarBuffer dummy
scoreboard objectives add elementalBarTimer dummy
scoreboard objectives add elementalFireTimer dummy
scoreboard objectives add elementalWindTimer dummy
scoreboard objectives add elementalWaterState dummy
scoreboard objectives add elementalEarthTimer dummy

#mermaid
scoreboard objectives add mermaidRay dummy
scoreboard objectives add mermaidmist dummy
scoreboard objectives add mermaidmistbuffer dummy


