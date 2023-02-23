#if there is even a single person in ruin without a set team, do not matchmake
execute unless entity @a[tag=ruin,tag=!t1,tag=!t2] run scoreboard players set true matchmake 1

#run general start
execute as @a[tag=ruin] run function under_pack:general_functions/general_start

#assigns players to teams
execute if score ruin player_num matches 20 run team join uBlue @r[tag=ruin,team=white,limit=10]
execute if score ruin player_num matches 20 run team join uRed @r[tag=ruin,team=white,limit=10]
execute if score ruin player_num matches 18 run team join uBlue @r[tag=ruin,team=white,limit=9]
execute if score ruin player_num matches 18 run team join uRed @r[tag=ruin,team=white,limit=9]
execute if score ruin player_num matches 16 run team join uBlue @r[tag=ruin,team=white,limit=8]
execute if score ruin player_num matches 16 run team join uRed @r[tag=ruin,team=white,limit=8]
execute if score ruin player_num matches 14 run team join uBlue @r[tag=ruin,team=white,limit=7]
execute if score ruin player_num matches 14 run team join uRed @r[tag=ruin,team=white,limit=7]
execute if score ruin player_num matches 12 run team join uBlue @r[tag=ruin,team=white,limit=6]
execute if score ruin player_num matches 12 run team join uRed @r[tag=ruin,team=white,limit=6]
execute if score ruin player_num matches 10 run team join uBlue @r[tag=ruin,team=white,limit=5]
execute if score ruin player_num matches 10 run team join uRed @r[tag=ruin,team=white,limit=5]
execute if score ruin player_num matches 8 run team join uBlue @r[tag=ruin,team=white,limit=4]
execute if score ruin player_num matches 8 run team join uRed @r[tag=ruin,team=white,limit=4]
execute if score ruin player_num matches 6 run team join uBlue @r[tag=ruin,team=white,limit=3]
execute if score ruin player_num matches 6 run team join uRed @r[tag=ruin,team=white,limit=3]
execute if score ruin player_num matches 4 run team join uBlue @r[tag=ruin,team=white,limit=2]
execute if score ruin player_num matches 4 run team join uRed @r[tag=ruin,team=white,limit=2]
execute if score ruin player_num matches 2 run team join uBlue @r[tag=ruin,team=white,limit=1]
execute if score ruin player_num matches 2 run team join uRed @r[tag=ruin,team=white,limit=1]

#cancel match with an odd number of players
scoreboard players operation ruinBuffer player_num = ruin player_num
scoreboard players operation ruinBuffer player_num %= TheNumberTwo constant
execute if score ruin player_num matches 21.. run scoreboard players set cancel matchmake 1
execute if score ruinBuffer player_num matches 1 run scoreboard players set cancel matchmake 1
execute if score ruin player_num matches ..1 run scoreboard players set cancel matchmake 1

#do not abort the game if we are doing custom teams
execute if score true matchmake matches 1 run scoreboard players set cancel matchmake 0
#set players to their custom teams
execute if score true matchmake matches 1 as @a[tag=t1,tag=ruin] run team join uRed
execute if score true matchmake matches 1 as @a[tag=t2,tag=ruin] run team join uBlue
#dont need true matchmake anymore
scoreboard players set true matchmake 0

#lose the set team tags
execute as @a[tag=ruin] run function under_pack:trigger_functions/leave

#tps players to their spawns and sets their spawnpoints
tp @a[tag=ruin,team=uRed] 22 93 524
tp @a[tag=ruin,team=uBlue] 22 93 578
spawnpoint @a[tag=ruin,team=uRed] 22 68 524
spawnpoint @a[tag=ruin,team=uBlue] 22 68 578

#ruin swag stores if the game is active or not, so it can be known if the tick should be run
scoreboard players set ruin swag 1
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_ruin points 160
#a game of undercraft is active so do not run the normal oneshot code
scoreboard players set under active 1
#amount of rounds won for each team
scoreboard players set ruin_red_wins points 0
scoreboard players set ruin_blue_wins points 0
#how many ticks is the grace period
scoreboard players set ruin_grace timer 400
#when will the point unlock
scoreboard players set ruin_unlock points 0
#which team wins
scoreboard players set ruin_winning team -1

#fill barriers to lock teams in their spawns
function under_pack:ruin_functions/ruin_start_fills

#schedule the first grace tick
schedule function under_pack:ruin_functions/ruin_grace 1t

#bossbar for the grace period
bossbar add count:ruin_grace "Select Your Class"
bossbar set count:ruin_grace color yellow
bossbar set count:ruin_grace style progress
bossbar set count:ruin_grace max 400
bossbar set count:ruin_grace players @a[tag=ruin]
bossbar set count:ruin_grace value 400
#bossbar for the status of the point
bossbar add count:ruin "ruin Point"
bossbar set count:ruin color white
bossbar set count:ruin style progress
bossbar set count:ruin max 320
bossbar set count:ruin players @a[tag=ruin]
bossbar set count:ruin value 160
#bossbar for the when the point will unlock
bossbar add count:ruin_unlock "Point will Unlock"
bossbar set count:ruin_unlock color white
bossbar set count:ruin_unlock style progress
bossbar set count:ruin_unlock max 1000
bossbar set count:ruin_unlock players @a[tag=ruin]
bossbar set count:ruin_unlock value 0

#make the bossbars invisible
bossbar set count:ruin visible false
bossbar set count:ruin_unlock visible false

#scoreboard
scoreboard objectives setdisplay sidebar pointscapped

#the actual process of aborting the game if we need to do that
execute if score cancel matchmake matches 1 as @a[tag=ruin] run tell @s monkey
execute if score cancel matchmake matches 1 as @a[tag=ruin] run function under_pack:ruin_functions/ruin_restart
scoreboard players set cancel matchmake 0