#if there is even a single person in gazebo without a set team, do not matchmake
execute unless entity @a[tag=gazebo,tag=!t1,tag=!t2] run scoreboard players set true matchmake 1

#run general start
execute as @a[tag=gazebo] run function under_pack:general_functions/general_start

#assigns players to teams
execute if score gazebo player_num matches 20 run team join uBlue @r[tag=gazebo,team=white,limit=10]
execute if score gazebo player_num matches 20 run team join uRed @r[tag=gazebo,team=white,limit=10]
execute if score gazebo player_num matches 18 run team join uBlue @r[tag=gazebo,team=white,limit=9]
execute if score gazebo player_num matches 18 run team join uRed @r[tag=gazebo,team=white,limit=9]
execute if score gazebo player_num matches 16 run team join uBlue @r[tag=gazebo,team=white,limit=8]
execute if score gazebo player_num matches 16 run team join uRed @r[tag=gazebo,team=white,limit=8]
execute if score gazebo player_num matches 14 run team join uBlue @r[tag=gazebo,team=white,limit=7]
execute if score gazebo player_num matches 14 run team join uRed @r[tag=gazebo,team=white,limit=7]
execute if score gazebo player_num matches 12 run team join uBlue @r[tag=gazebo,team=white,limit=6]
execute if score gazebo player_num matches 12 run team join uRed @r[tag=gazebo,team=white,limit=6]
execute if score gazebo player_num matches 10 run team join uBlue @r[tag=gazebo,team=white,limit=5]
execute if score gazebo player_num matches 10 run team join uRed @r[tag=gazebo,team=white,limit=5]
execute if score gazebo player_num matches 8 run team join uBlue @r[tag=gazebo,team=white,limit=4]
execute if score gazebo player_num matches 8 run team join uRed @r[tag=gazebo,team=white,limit=4]
execute if score gazebo player_num matches 6 run team join uBlue @r[tag=gazebo,team=white,limit=3]
execute if score gazebo player_num matches 6 run team join uRed @r[tag=gazebo,team=white,limit=3]
execute if score gazebo player_num matches 4 run team join uBlue @r[tag=gazebo,team=white,limit=2]
execute if score gazebo player_num matches 4 run team join uRed @r[tag=gazebo,team=white,limit=2]
execute if score gazebo player_num matches 2 run team join uBlue @r[tag=gazebo,team=white,limit=1]
execute if score gazebo player_num matches 2 run team join uRed @r[tag=gazebo,team=white,limit=1]

#cancel match with an odd number of players
scoreboard players operation gazeboBuffer player_num = gazebo player_num
scoreboard players operation gazeboBuffer player_num %= TheNumberTwo constant
execute if score gazebo player_num matches 21.. run scoreboard players set cancel matchmake 1
execute if score gazeboBuffer player_num matches 1 run scoreboard players set cancel matchmake 1
execute if score gazebo player_num matches ..1 run scoreboard players set cancel matchmake 1

#do not abort the game if we are doing custom teams
execute if score true matchmake matches 1 run scoreboard players set cancel matchmake 0
#set players to their custom teams
execute if score true matchmake matches 1 as @a[tag=t1,tag=gazebo] run team join uRed
execute if score true matchmake matches 1 as @a[tag=t2,tag=gazebo] run team join uBlue
#dont need true matchmake anymore
scoreboard players set true matchmake 0

#lose the set team tags
execute as @a[tag=gazebo] run function under_pack:trigger_functions/leave

#set the deathbuffer
scoreboard players set DeathBuffer constant 14

#tps players to their spawns and sets their spawnpoints
tp @a[tag=gazebo,team=uRed] 629 43 -9
tp @a[tag=gazebo,team=uBlue] 522 43 -8
spawnpoint @a[tag=gazebo,team=uRed] 629 43 -9
spawnpoint @a[tag=gazebo,team=uBlue] 522 43 -8

#gazebo swag stores if the game is active or not, so it can be known if the tick should be run
scoreboard players set gazebo swag 1
#which teams has control of the point, and a buffer so I know when it changes
scoreboard players set gazebo team -1
scoreboard players set gazeboBuffer team -1
#how many points (out of 100) does each team have
scoreboard players set red_gazebo points 0
scoreboard players set blue_gazebo points 0
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_gazebo points 160
#a game of undercraft is active so do not run the normal oneshot code
scoreboard players set under active 1
#timer to make sure the percentage is only updated once every 1.2 seconds
scoreboard players set gazebo timer 0
#amount of rounds won for each team
scoreboard players set gazebo_red_wins points 0
scoreboard players set gazebo_blue_wins points 0
#how many ticks is the grace period
scoreboard players set gazebo_grace timer 400
#overtime timer
scoreboard players set gazebo_overtime timer 60
#has overtime been toggled
scoreboard players set gazebo_overtime_toggle swag 0

#fill barriers to lock teams in their spawns
fill 617 43 -12 617 49 -5 barrier
fill 534 43 -5 534 48 -12 barrier

#schedule the first grace tick
schedule function under_pack:gazebo_functions/gazebo_grace 1t

#bossbar for overtime
bossbar add count:gazebo_ot "Overtime"
bossbar set count:gazebo_ot color purple
bossbar set count:gazebo_ot style progress
bossbar set count:gazebo_ot max 60
bossbar set count:gazebo_ot players @a[tag=gazebo]
bossbar set count:gazebo_ot value 60
#bossbar for the grace period
bossbar add count:gazebo_grace "Select Your Class"
bossbar set count:gazebo_grace color yellow
bossbar set count:gazebo_grace style progress
bossbar set count:gazebo_grace max 400
bossbar set count:gazebo_grace players @a[tag=gazebo]
bossbar set count:gazebo_grace value 400
#bossbar for the status of the point
bossbar add count:gazebo "Gazebo Point"
bossbar set count:gazebo color white
bossbar set count:gazebo style progress
bossbar set count:gazebo max 320
bossbar set count:gazebo players @a[tag=gazebo]
bossbar set count:gazebo value 160
#Blue team's status
bossbar add count:gazebo_blue "Blue Team Progress"
bossbar set count:gazebo_blue color blue
bossbar set count:gazebo_blue style notched_10
bossbar set count:gazebo_blue max 100
bossbar set count:gazebo_blue players @a[tag=gazebo]
bossbar set count:gazebo_blue value 0
#Red team's status
bossbar add count:gazebo_red "Red Team Progress"
bossbar set count:gazebo_red color red
bossbar set count:gazebo_red style notched_10
bossbar set count:gazebo_red max 100
bossbar set count:gazebo_red players @a[tag=gazebo]
bossbar set count:gazebo_red value 0

#make the bossbars invisible
bossbar set count:gazebo visible false
bossbar set count:gazebo_blue visible false
bossbar set count:gazebo_red visible false
bossbar set count:gazebo_ot visible false


#the actual process of aborting the game if we need to do that
execute if score cancel matchmake matches 1 as @a[tag=gazebo] run tell @s monkey
execute if score cancel matchmake matches 1 as @a[tag=gazebo] run function under_pack:gazebo_functions/gazebo_restart
scoreboard players set cancel matchmake 0