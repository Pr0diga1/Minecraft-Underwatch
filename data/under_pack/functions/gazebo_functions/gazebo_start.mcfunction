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