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

#objective to track what class you are
scoreboard objectives add class dummy

#buffer objective for changing classes
scoreboard objectives add classCheck dummy

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