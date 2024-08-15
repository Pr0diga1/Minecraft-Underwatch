#if there is even a single person in nylium without a set team, do not matchmake
execute unless entity @a[tag=nylium,tag=!t1,tag=!t2] run scoreboard players set true matchmake 1

#run general start
execute as @a[tag=nylium] run function under_pack:general_functions/general_start

#assigns players to teams
execute if score nylium player_num matches 20 run team join uBlue @r[tag=nylium,team=white,limit=10]
execute if score nylium player_num matches 20 run team join uRed @r[tag=nylium,team=white,limit=10]
execute if score nylium player_num matches 18 run team join uBlue @r[tag=nylium,team=white,limit=9]
execute if score nylium player_num matches 18 run team join uRed @r[tag=nylium,team=white,limit=9]
execute if score nylium player_num matches 16 run team join uBlue @r[tag=nylium,team=white,limit=8]
execute if score nylium player_num matches 16 run team join uRed @r[tag=nylium,team=white,limit=8]
execute if score nylium player_num matches 14 run team join uBlue @r[tag=nylium,team=white,limit=7]
execute if score nylium player_num matches 14 run team join uRed @r[tag=nylium,team=white,limit=7]
execute if score nylium player_num matches 12 run team join uBlue @r[tag=nylium,team=white,limit=6]
execute if score nylium player_num matches 12 run team join uRed @r[tag=nylium,team=white,limit=6]
execute if score nylium player_num matches 10 run team join uBlue @r[tag=nylium,team=white,limit=5]
execute if score nylium player_num matches 10 run team join uRed @r[tag=nylium,team=white,limit=5]
execute if score nylium player_num matches 8 run team join uBlue @r[tag=nylium,team=white,limit=4]
execute if score nylium player_num matches 8 run team join uRed @r[tag=nylium,team=white,limit=4]
execute if score nylium player_num matches 6 run team join uBlue @r[tag=nylium,team=white,limit=3]
execute if score nylium player_num matches 6 run team join uRed @r[tag=nylium,team=white,limit=3]
execute if score nylium player_num matches 4 run team join uBlue @r[tag=nylium,team=white,limit=2]
execute if score nylium player_num matches 4 run team join uRed @r[tag=nylium,team=white,limit=2]
execute if score nylium player_num matches 2 run team join uBlue @r[tag=nylium,team=white,limit=1]
execute if score nylium player_num matches 2 run team join uRed @r[tag=nylium,team=white,limit=1]

#cancel match with an odd number of players
scoreboard players operation nyliumBuffer player_num = nylium player_num
scoreboard players operation nyliumBuffer player_num %= TheNumberTwo constant
execute if score nylium player_num matches 21.. run scoreboard players set cancel matchmake 1
execute if score nyliumBuffer player_num matches 1 run scoreboard players set cancel matchmake 1
execute if score nylium player_num matches ..1 run scoreboard players set cancel matchmake 1

#do not abort the game if we are doing custom teams
execute if score true matchmake matches 1 run scoreboard players set cancel matchmake 0
#set players to their custom teams
execute if score true matchmake matches 1 as @a[tag=t1,tag=nylium] run team join uRed
execute if score true matchmake matches 1 as @a[tag=t2,tag=nylium] run team join uBlue
#dont need true matchmake anymore
scoreboard players set true matchmake 0

#lose the set team tags
execute as @a[tag=nylium] run function under_pack:trigger_functions/leave

#set the deathbuffer
scoreboard players set DeathBuffer constant 15

#tps players to their spawns and sets their spawnpoints
tp @a[tag=nylium,team=uRed] -497 86 -575
tp @a[tag=nylium,team=uBlue] -508 86 -457
spawnpoint @a[tag=nylium,team=uRed] -497 86 -575
spawnpoint @a[tag=nylium,team=uBlue] -508 86 -457

#nylium swag stores if the game is active or not, so it can be known if the tick should be run
scoreboard players set nylium swag 1
#which teams has control of the point, and a buffer so I know when it changes
scoreboard players set nylium team -1
scoreboard players set nyliumBuffer team -1
#how many points (out of 100) does each team have
scoreboard players set red_nylium points 0
scoreboard players set blue_nylium points 0
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_nylium points 160
#a game of undercraft is active so do not run the normal oneshot code
scoreboard players set under active 1
#timer to make sure the percentage is only updated once every 1.2 seconds
scoreboard players set nylium timer 0
#amount of rounds won for each team
scoreboard players set nylium_red_wins points 0
scoreboard players set nylium_blue_wins points 0
#how many ticks is the grace period
scoreboard players set nylium_grace timer 400
#overtime timer
scoreboard players set nylium_overtime timer 60
#has overtime been toggled
scoreboard players set nylium_overtime_toggle swag 0

#fill barriers to lock teams in their spawns
#blue
fill -507 86 -474 -510 88 -474 barrier
#red
fill -495 88 -557 -498 86 -557 barrier

#schedule the first grace tick
schedule function under_pack:nylium_functions/nylium_grace 1t

#bossbar for overtime
bossbar add count:nylium_ot "Overtime"
bossbar set count:nylium_ot color purple
bossbar set count:nylium_ot style progress
bossbar set count:nylium_ot max 60
bossbar set count:nylium_ot players @a[tag=nylium]
bossbar set count:nylium_ot value 60
#bossbar for the grace period
bossbar add count:nylium_grace "Select Your Class"
bossbar set count:nylium_grace color yellow
bossbar set count:nylium_grace style progress
bossbar set count:nylium_grace max 400
bossbar set count:nylium_grace players @a[tag=nylium]
bossbar set count:nylium_grace value 400
#bossbar for the status of the point
bossbar add count:nylium "nylium Point"
bossbar set count:nylium color white
bossbar set count:nylium style progress
bossbar set count:nylium max 320
bossbar set count:nylium players @a[tag=nylium]
bossbar set count:nylium value 160
#Blue team's status
bossbar add count:nylium_blue "Blue Team Progress"
bossbar set count:nylium_blue color blue
bossbar set count:nylium_blue style notched_10
bossbar set count:nylium_blue max 100
bossbar set count:nylium_blue players @a[tag=nylium]
bossbar set count:nylium_blue value 0
#Red team's status
bossbar add count:nylium_red "Red Team Progress"
bossbar set count:nylium_red color red
bossbar set count:nylium_red style notched_10
bossbar set count:nylium_red max 100
bossbar set count:nylium_red players @a[tag=nylium]
bossbar set count:nylium_red value 0

#make the bossbars invisible
bossbar set count:nylium visible false
bossbar set count:nylium_blue visible false
bossbar set count:nylium_red visible false
bossbar set count:nylium_ot visible false


#the actual process of aborting the game if we need to do that
execute if score cancel matchmake matches 1 as @a[tag=nylium] run tell @s monkey
execute if score cancel matchmake matches 1 as @a[tag=nylium] run function under_pack:nylium_functions/nylium_restart
scoreboard players set cancel matchmake 0