#if there is even a single person in lake without a set team, do not matchmake
execute unless entity @a[tag=lake,tag=!t1,tag=!t2] run scoreboard players set true matchmake 1

#run general start
execute as @a[tag=lake] run function under_pack:general_functions/general_start

#assigns players to teams
execute if score lake player_num matches 20 run team join uBlue @r[tag=lake,team=white,limit=10]
execute if score lake player_num matches 20 run team join uRed @r[tag=lake,team=white,limit=10]
execute if score lake player_num matches 18 run team join uBlue @r[tag=lake,team=white,limit=9]
execute if score lake player_num matches 18 run team join uRed @r[tag=lake,team=white,limit=9]
execute if score lake player_num matches 16 run team join uBlue @r[tag=lake,team=white,limit=8]
execute if score lake player_num matches 16 run team join uRed @r[tag=lake,team=white,limit=8]
execute if score lake player_num matches 14 run team join uBlue @r[tag=lake,team=white,limit=7]
execute if score lake player_num matches 14 run team join uRed @r[tag=lake,team=white,limit=7]
execute if score lake player_num matches 12 run team join uBlue @r[tag=lake,team=white,limit=6]
execute if score lake player_num matches 12 run team join uRed @r[tag=lake,team=white,limit=6]
execute if score lake player_num matches 10 run team join uBlue @r[tag=lake,team=white,limit=5]
execute if score lake player_num matches 10 run team join uRed @r[tag=lake,team=white,limit=5]
execute if score lake player_num matches 8 run team join uBlue @r[tag=lake,team=white,limit=4]
execute if score lake player_num matches 8 run team join uRed @r[tag=lake,team=white,limit=4]
execute if score lake player_num matches 6 run team join uBlue @r[tag=lake,team=white,limit=3]
execute if score lake player_num matches 6 run team join uRed @r[tag=lake,team=white,limit=3]
execute if score lake player_num matches 4 run team join uBlue @r[tag=lake,team=white,limit=2]
execute if score lake player_num matches 4 run team join uRed @r[tag=lake,team=white,limit=2]
execute if score lake player_num matches 2 run team join uBlue @r[tag=lake,team=white,limit=1]
execute if score lake player_num matches 2 run team join uRed @r[tag=lake,team=white,limit=1]

#cancel match with an odd number of players
scoreboard players operation lakeBuffer player_num = lake player_num
scoreboard players operation lakeBuffer player_num %= TheNumberTwo constant
execute if score lake player_num matches 21.. run scoreboard players set cancel matchmake 1
execute if score lakeBuffer player_num matches 1 run scoreboard players set cancel matchmake 1
execute if score lake player_num matches ..1 run scoreboard players set cancel matchmake 1

#do not abort the game if we are doing custom teams
execute if score true matchmake matches 1 run scoreboard players set cancel matchmake 0
#set players to their custom teams
execute if score true matchmake matches 1 as @a[tag=t1,tag=lake] run team join uRed
execute if score true matchmake matches 1 as @a[tag=t2,tag=lake] run team join uBlue
#dont need true matchmake anymore
scoreboard players set true matchmake 0

#lose the set team tags
execute as @a[tag=lake] run function under_pack:trigger_functions/leave

#set the deathbuffer
scoreboard players set DeathBuffer constant 15

#tps players to their spawns and sets their spawnpoints
tp @a[tag=lake,team=uRed] -497 86 -575
tp @a[tag=lake,team=uBlue] -508 86 -457
spawnpoint @a[tag=lake,team=uRed] -497 86 -575
spawnpoint @a[tag=lake,team=uBlue] -508 86 -457

#lake swag stores if the game is active or not, so it can be known if the tick should be run
scoreboard players set lake swag 1
#which teams has control of the point, and a buffer so I know when it changes
scoreboard players set lake team -1
scoreboard players set lakeBuffer team -1
#how many points (out of 100) does each team have
scoreboard players set red_lake points 0
scoreboard players set blue_lake points 0
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_lake points 160
#a game of undercraft is active so do not run the normal oneshot code
scoreboard players set under active 1
#timer to make sure the percentage is only updated once every 1.2 seconds
scoreboard players set lake timer 0
#amount of rounds won for each team
scoreboard players set lake_red_wins points 0
scoreboard players set lake_blue_wins points 0
#how many ticks is the grace period
scoreboard players set lake_grace timer 400
#overtime timer
scoreboard players set lake_overtime timer 60
#has overtime been toggled
scoreboard players set lake_overtime_toggle swag 0

#fill barriers to lock teams in their spawns
#blue
fill -507 86 -474 -510 88 -474 barrier
#red
fill -495 88 -557 -498 86 -557 barrier

#schedule the first grace tick
schedule function under_pack:lake_functions/lake_grace 1t

#bossbar for overtime
bossbar add count:lake_ot "Overtime"
bossbar set count:lake_ot color purple
bossbar set count:lake_ot style progress
bossbar set count:lake_ot max 60
bossbar set count:lake_ot players @a[tag=lake]
bossbar set count:lake_ot value 60
#bossbar for the grace period
bossbar add count:lake_grace "Select Your Class"
bossbar set count:lake_grace color yellow
bossbar set count:lake_grace style progress
bossbar set count:lake_grace max 400
bossbar set count:lake_grace players @a[tag=lake]
bossbar set count:lake_grace value 400
#bossbar for the status of the point
bossbar add count:lake "Lake Point"
bossbar set count:lake color white
bossbar set count:lake style progress
bossbar set count:lake max 320
bossbar set count:lake players @a[tag=lake]
bossbar set count:lake value 160
#Blue team's status
bossbar add count:lake_blue "Blue Team Progress"
bossbar set count:lake_blue color blue
bossbar set count:lake_blue style notched_10
bossbar set count:lake_blue max 100
bossbar set count:lake_blue players @a[tag=lake]
bossbar set count:lake_blue value 0
#Red team's status
bossbar add count:lake_red "Red Team Progress"
bossbar set count:lake_red color red
bossbar set count:lake_red style notched_10
bossbar set count:lake_red max 100
bossbar set count:lake_red players @a[tag=lake]
bossbar set count:lake_red value 0

#make the bossbars invisible
bossbar set count:lake visible false
bossbar set count:lake_blue visible false
bossbar set count:lake_red visible false
bossbar set count:lake_ot visible false

execute as @a[tag=lake] run trigger menu

#the actual process of aborting the game if we need to do that
execute if score cancel matchmake matches 1 as @a[tag=lake] run tell @s monkey
execute if score cancel matchmake matches 1 as @a[tag=lake] run function under_pack:lake_functions/lake_restart
scoreboard players set cancel matchmake 0