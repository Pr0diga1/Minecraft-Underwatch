#adds the red team
team add uRed
team modify uRed friendlyFire false
team modify uRed color red
#adds the blue team
team add uBlue
team modify uBlue friendlyFire false
team modify uBlue color blue

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

#adds constant and any needed multipliers
scoreboard objectives add constant dummy
scoreboard players set TickToSecond constant 20
scoreboard players set TheNumberTen constant 10
scoreboard players set everyOther constant 1
scoreboard players set minusOne constant -1

#all of the triggers for the classes
scoreboard objectives add alchemist trigger
scoreboard objectives add scientist trigger
scoreboard objectives add lumberjack trigger
scoreboard objectives add knight trigger
scoreboard objectives add rogue trigger
scoreboard objectives add ninja trigger
scoreboard objectives add archer trigger
scoreboard objectives add wizard trigger
scoreboard objectives add engineer trigger
scoreboard objectives add paladin trigger

#adds trackers for abilities and ults
scoreboard objectives add movement dummy
scoreboard objectives add ability1 dummy
scoreboard objectives add ability2 dummy
scoreboard objectives add ability3 dummy
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


#archer


#engineer


#knight
scoreboard objectives add blockIsActive dummy

#lumberjack
scoreboard objectives add LumberjackMotionX dummy
scoreboard objectives add LumberjackMotionY dummy
scoreboard objectives add LumberjackMotionZ dummy
scoreboard objectives add lumberjack_axe_slam dummy
scoreboard objectives add lumberjack_axe_slam2 dummy
scoreboard objectives add lumberjack_axe_slam3 dummy

#ninja
scoreboard objectives add ninjaHyperventilate dummy
scoreboard objectives add ninjaMotionX dummy
scoreboard objectives add ninjaMotionY dummy
scoreboard objectives add ninjaMotionZ dummy
scoreboard objectives add ninjaRay dummy
scoreboard objectives add ninjaUltActive dummy
scoreboard objectives add ninjaUltTiming dummy

#paladin


#rogue


#scientist
scoreboard objectives add scientistDamageReload dummy
scoreboard objectives add scientistHealingReload dummy
scoreboard objectives add scientistBowFired minecraft.used:minecraft.bow

#wizard