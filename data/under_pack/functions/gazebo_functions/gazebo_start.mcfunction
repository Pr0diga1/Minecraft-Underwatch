#creates a buffer of everyone in gazebo with a team tag
execute store result score buffer player_num if entity @a[tag=gazebo,tag=t1]
execute store result score buffer2 player_num if entity @a[tag=gazebo,tag=t2]
scoreboard players operation buffer player_num += buffer2 player_num
#if the buffer equals the amount of people with the gazebo tag, match is set to 1
execute if score buffer player_num = gazebo player_num run scoreboard players set match points 1
#reset the buffers as they are no longer needed
scoreboard players reset buffer player_num
scoreboard players reset buffer2 player_num

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
execute if score gazebo player_num matches 21.. run scoreboard players set false points 1
execute if score gazebo player_num matches 19 run scoreboard players set false points 1
execute if score gazebo player_num matches 17 run scoreboard players set false points 1
execute if score gazebo player_num matches 15 run scoreboard players set false points 1
execute if score gazebo player_num matches 13 run scoreboard players set false points 1
execute if score gazebo player_num matches 11 run scoreboard players set false points 1
execute if score gazebo player_num matches 9 run scoreboard players set false points 1
execute if score gazebo player_num matches 7 run scoreboard players set false points 1
execute if score gazebo player_num matches 5 run scoreboard players set false points 1
execute if score gazebo player_num matches 3 run scoreboard players set false points 1
execute if score gazebo player_num matches ..1 run scoreboard players set false points 1

#do not abort the game if we are doing custom teams
execute if score match points matches 1 run scoreboard players set false points 0
#not needed but im scared to remove it
execute if score match points matches 1 as @a[tag=!t1,tag=!t2,tag=gazebo,tag=ingame] run scoreboard players set false points 1
#set players to their custom teams
execute if score match points matches 1 as @a[tag=t1,tag=gazebo] run team join uRed
execute if score match points matches 1 as @a[tag=t2,tag=gazebo] run team join uBlue

#tps players to their spawns and sets their spawnpoints
tp @a[tag=gazebo,team=uRed] -1578 59 -574
tp @a[tag=gazebo,team=uBlue] -1685 59 -573
spawnpoint @a[tag=gazebo,team=uRed] -1578 59 -574
spawnpoint @a[tag=gazebo,team=uBlue] -1685 59 -573

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

#the actual process of aborting the game if we need to do that
execute if score false points matches 1 run function under_pack:gazebo_functions/gazebo_restart
execute if score false points matches 1 run tell @s monkey
scoreboard players set false points 0