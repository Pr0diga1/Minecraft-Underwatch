#if there is even a single person in park without a set team, do not matchmake
execute unless entity @a[tag=park,tag=!t1,tag=!t2] run scoreboard players set true matchmake 1

#run general start
execute as @a[tag=park] run function under_pack:general_functions/general_start

#assigns players to teams
execute if score park player_num matches 20 run team join uBlue @r[tag=park,team=white,limit=10]
execute if score park player_num matches 20 run team join uRed @r[tag=park,team=white,limit=10]
execute if score park player_num matches 18 run team join uBlue @r[tag=park,team=white,limit=9]
execute if score park player_num matches 18 run team join uRed @r[tag=park,team=white,limit=9]
execute if score park player_num matches 16 run team join uBlue @r[tag=park,team=white,limit=8]
execute if score park player_num matches 16 run team join uRed @r[tag=park,team=white,limit=8]
execute if score park player_num matches 14 run team join uBlue @r[tag=park,team=white,limit=7]
execute if score park player_num matches 14 run team join uRed @r[tag=park,team=white,limit=7]
execute if score park player_num matches 12 run team join uBlue @r[tag=park,team=white,limit=6]
execute if score park player_num matches 12 run team join uRed @r[tag=park,team=white,limit=6]
execute if score park player_num matches 10 run team join uBlue @r[tag=park,team=white,limit=5]
execute if score park player_num matches 10 run team join uRed @r[tag=park,team=white,limit=5]
execute if score park player_num matches 8 run team join uBlue @r[tag=park,team=white,limit=4]
execute if score park player_num matches 8 run team join uRed @r[tag=park,team=white,limit=4]
execute if score park player_num matches 6 run team join uBlue @r[tag=park,team=white,limit=3]
execute if score park player_num matches 6 run team join uRed @r[tag=park,team=white,limit=3]
execute if score park player_num matches 4 run team join uBlue @r[tag=park,team=white,limit=2]
execute if score park player_num matches 4 run team join uRed @r[tag=park,team=white,limit=2]
execute if score park player_num matches 2 run team join uBlue @r[tag=park,team=white,limit=1]
execute if score park player_num matches 2 run team join uRed @r[tag=park,team=white,limit=1]

#cancel match with an odd number of players
scoreboard players operation parkBuffer player_num = park player_num
scoreboard players operation parkBuffer player_num %= TheNumberTwo constant
execute if score park player_num matches 21.. run scoreboard players set cancel matchmake 1
execute if score parkBuffer player_num matches 1 run scoreboard players set cancel matchmake 1
execute if score park player_num matches ..1 run scoreboard players set cancel matchmake 1

#do not abort the game if we are doing custom teams
execute if score true matchmake matches 1 run scoreboard players set cancel matchmake 0
#set players to their custom teams
execute if score true matchmake matches 1 as @a[tag=t1,tag=park] run team join uRed
execute if score true matchmake matches 1 as @a[tag=t2,tag=park] run team join uBlue
#dont need true matchmake anymore
scoreboard players set true matchmake 0

#lose the set team tags
execute as @a[tag=park] run function under_pack:trigger_functions/leave

#tps players to their spawns and sets their spawnpoints
tp @a[tag=park,team=uRed] 629 43 -9
tp @a[tag=park,team=uBlue] 522 43 -8
spawnpoint @a[tag=park,team=uRed] 629 43 -9
spawnpoint @a[tag=park,team=uBlue] 522 43 -8

#park swag stores if the game is active or not, so it can be known if the tick should be run
scoreboard players set park swag 1
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_park points 160
#a game of undercraft is active so do not run the normal oneshot code
scoreboard players set under active 1
#amount of rounds won for each team
scoreboard players set park_red_wins points 0
scoreboard players set park_blue_wins points 0
#how many ticks is the grace period
scoreboard players set park_grace timer 400
#when will the point unlock
scoreboard players set park_unlock points 0
#which team wins
scoreboard players set park_winning team -1

#fill barriers to lock teams in their spawns
fill 617 43 -12 617 49 -5 barrier
fill 534 43 -5 534 48 -12 barrier

#schedule the first grace tick
schedule function under_pack:park_functions/park_grace 1t

#bossbar for the grace period
bossbar add count:park_grace "Select Your Class"
bossbar set count:park_grace color yellow
bossbar set count:park_grace style progress
bossbar set count:park_grace max 400
bossbar set count:park_grace players @a[tag=park]
bossbar set count:park_grace value 400
#bossbar for the status of the point
bossbar add count:park "Park Point"
bossbar set count:park color white
bossbar set count:park style progress
bossbar set count:park max 320
bossbar set count:park players @a[tag=park]
bossbar set count:park value 160
#bossbar for the when the point will unlock
bossbar add count:park_unlock "Point will Unlock"
bossbar set count:park_unlock color white
bossbar set count:park_unlock style progress
bossbar set count:park_unlock max 500
bossbar set count:park_unlock players @a[tag=park]
bossbar set count:park_unlock value 0

#make the bossbars invisible
bossbar set count:park visible false
bossbar set count:park_unlock visible false

#scoreboard
scoreboard objectives setdisplay sidebar pointscapped

#the actual process of aborting the game if we need to do that
execute if score cancel matchmake matches 1 as @a[tag=park] run tell @s monkey
execute if score cancel matchmake matches 1 as @a[tag=park] run function under_pack:park_functions/park_restart
scoreboard players set cancel matchmake 0