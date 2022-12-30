#adds the red team
team add uRed
team modify uRed friendlyFire false
team modify uRed color red
#adds the blue team
team add uBlue
team modify uBlue friendlyFire false
team modify uBlue color blue

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

#adds constant and any needed multipliers
scoreboard objectives add constant dummy
scoreboard players set TickToSecond constant 20
scoreboard players set TheNumberTen constant 10

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
#class specific scoreboards
#alc


#archer


#engineer


#knight


#lumberjack
scoreboard objectives add LumberjackMotionX dummy
scoreboard objectives add LumberjackMotionY dummy
scoreboard objectives add LumberjackMotionZ dummy
scoreboard objectives add lumberjack_axe_slam dummy
scoreboard objectives add lumberjack_ult_charge dummy
scoreboard objectives add lumberjack_ult_timer dummy 
scoreboard objectives add vanitykills playerKillCount
scoreboard objectives add damage minecraft.custom:minecraft.damage_dealt
#ninja


#paladin


#rogue


#scientist


#wizard