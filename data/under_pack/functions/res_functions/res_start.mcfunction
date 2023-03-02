#if there is even a single person in res without a set team, do not matchmake
execute unless entity @a[tag=res,tag=!t1,tag=!t2] run scoreboard players set true matchmake 1

#run general start
execute as @a[tag=res] run function under_pack:general_functions/general_start

#assigns players to teams
execute if score res player_num matches 20 run team join uBlue @r[tag=res,team=white,limit=10]
execute if score res player_num matches 20 run team join uRed @r[tag=res,team=white,limit=10]
execute if score res player_num matches 18 run team join uBlue @r[tag=res,team=white,limit=9]
execute if score res player_num matches 18 run team join uRed @r[tag=res,team=white,limit=9]
execute if score res player_num matches 16 run team join uBlue @r[tag=res,team=white,limit=8]
execute if score res player_num matches 16 run team join uRed @r[tag=res,team=white,limit=8]
execute if score res player_num matches 14 run team join uBlue @r[tag=res,team=white,limit=7]
execute if score res player_num matches 14 run team join uRed @r[tag=res,team=white,limit=7]
execute if score res player_num matches 12 run team join uBlue @r[tag=res,team=white,limit=6]
execute if score res player_num matches 12 run team join uRed @r[tag=res,team=white,limit=6]
execute if score res player_num matches 10 run team join uBlue @r[tag=res,team=white,limit=5]
execute if score res player_num matches 10 run team join uRed @r[tag=res,team=white,limit=5]
execute if score res player_num matches 8 run team join uBlue @r[tag=res,team=white,limit=4]
execute if score res player_num matches 8 run team join uRed @r[tag=res,team=white,limit=4]
execute if score res player_num matches 6 run team join uBlue @r[tag=res,team=white,limit=3]
execute if score res player_num matches 6 run team join uRed @r[tag=res,team=white,limit=3]
execute if score res player_num matches 4 run team join uBlue @r[tag=res,team=white,limit=2]
execute if score res player_num matches 4 run team join uRed @r[tag=res,team=white,limit=2]
execute if score res player_num matches 2 run team join uBlue @r[tag=res,team=white,limit=1]
execute if score res player_num matches 2 run team join uRed @r[tag=res,team=white,limit=1]

#cancel match with an odd number of players
scoreboard players operation resBuffer player_num = res player_num
scoreboard players operation resBuffer player_num %= TheNumberTwo constant
execute if score res player_num matches 21.. run scoreboard players set cancel matchmake 1
execute if score resBuffer player_num matches 1 run scoreboard players set cancel matchmake 1
execute if score res player_num matches ..1 run scoreboard players set cancel matchmake 1

#do not abort the game if we are doing custom teams
execute if score true matchmake matches 1 run scoreboard players set cancel matchmake 0
#set players to their custom teams
execute if score true matchmake matches 1 as @a[tag=t1,tag=res] run team join uRed
execute if score true matchmake matches 1 as @a[tag=t2,tag=res] run team join uBlue
#dont need true matchmake anymore
scoreboard players set true matchmake 0

#lose the set team tags
execute as @a[tag=res] run function under_pack:trigger_functions/leave

#tps players to their spawns and sets their spawnpoints
tp @a[tag=res,team=uRed] -568 85 -569
tp @a[tag=res,team=uBlue] -579 85 -478
spawnpoint @a[tag=res,team=uRed] -568 85 -569
spawnpoint @a[tag=res,team=uBlue] -579 85 -478

#res swag stores if the game is active or not, so it can be known if the tick should be run
scoreboard players set res swag 1
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_res points 160
#a game of undercraft is active so do not run the normal oneshot code
scoreboard players set under active 1
#amount of rounds won for each team
scoreboard players set res_red_wins points 0
scoreboard players set res_blue_wins points 0
#how many ticks is the grace period
scoreboard players set res_grace timer 400
#when will the point unlock
scoreboard players set res_unlock points 0
#which team wins
scoreboard players set res_winning team -1

#fill barriers to lock teams in their spawns
fill -581 85 -481 -578 87 -481 barrier replace air
fill -569 85 -563 -566 87 -563 barrier replace air

#schedule the first grace tick
schedule function under_pack:res_functions/res_grace 1t

#bossbar for the grace period
bossbar add count:res_grace "Select Your Class"
bossbar set count:res_grace color yellow
bossbar set count:res_grace style progress
bossbar set count:res_grace max 400
bossbar set count:res_grace players @a[tag=res]
bossbar set count:res_grace value 400
#bossbar for the status of the point
bossbar add count:res "Res Point"
bossbar set count:res color white
bossbar set count:res style progress
bossbar set count:res max 320
bossbar set count:res players @a[tag=res]
bossbar set count:res value 160
#bossbar for the when the point will unlock
bossbar add count:res_unlock "Point will Unlock"
bossbar set count:res_unlock color white
bossbar set count:res_unlock style progress
bossbar set count:res_unlock max 1000
bossbar set count:res_unlock players @a[tag=res]
bossbar set count:res_unlock value 0

#make the bossbars invisible
bossbar set count:res visible false
bossbar set count:res_unlock visible false

#scoreboard
scoreboard objectives setdisplay sidebar pointscapped

#the actual process of aborting the game if we need to do that
execute if score cancel matchmake matches 1 as @a[tag=res] run tell @s monkey
execute if score cancel matchmake matches 1 as @a[tag=res] run function under_pack:res_functions/res_restart
scoreboard players set cancel matchmake 0