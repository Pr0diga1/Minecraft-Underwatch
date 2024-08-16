#if there is even a single person in cavern without a set team, do not matchmake
execute unless entity @a[tag=cavern,tag=!t1,tag=!t2] run scoreboard players set true matchmake 1

#run general start
execute as @a[tag=cavern] run function under_pack:general_functions/general_start

#assigns players to teams
execute if score cavern player_num matches 20 run team join uBlue @r[tag=cavern,team=white,limit=10]
execute if score cavern player_num matches 20 run team join uRed @r[tag=cavern,team=white,limit=10]
execute if score cavern player_num matches 18 run team join uBlue @r[tag=cavern,team=white,limit=9]
execute if score cavern player_num matches 18 run team join uRed @r[tag=cavern,team=white,limit=9]
execute if score cavern player_num matches 16 run team join uBlue @r[tag=cavern,team=white,limit=8]
execute if score cavern player_num matches 16 run team join uRed @r[tag=cavern,team=white,limit=8]
execute if score cavern player_num matches 14 run team join uBlue @r[tag=cavern,team=white,limit=7]
execute if score cavern player_num matches 14 run team join uRed @r[tag=cavern,team=white,limit=7]
execute if score cavern player_num matches 12 run team join uBlue @r[tag=cavern,team=white,limit=6]
execute if score cavern player_num matches 12 run team join uRed @r[tag=cavern,team=white,limit=6]
execute if score cavern player_num matches 10 run team join uBlue @r[tag=cavern,team=white,limit=5]
execute if score cavern player_num matches 10 run team join uRed @r[tag=cavern,team=white,limit=5]
execute if score cavern player_num matches 8 run team join uBlue @r[tag=cavern,team=white,limit=4]
execute if score cavern player_num matches 8 run team join uRed @r[tag=cavern,team=white,limit=4]
execute if score cavern player_num matches 6 run team join uBlue @r[tag=cavern,team=white,limit=3]
execute if score cavern player_num matches 6 run team join uRed @r[tag=cavern,team=white,limit=3]
execute if score cavern player_num matches 4 run team join uBlue @r[tag=cavern,team=white,limit=2]
execute if score cavern player_num matches 4 run team join uRed @r[tag=cavern,team=white,limit=2]
execute if score cavern player_num matches 2 run team join uBlue @r[tag=cavern,team=white,limit=1]
execute if score cavern player_num matches 2 run team join uRed @r[tag=cavern,team=white,limit=1]

#cancel match with an odd number of players
scoreboard players operation cavernBuffer player_num = cavern player_num
scoreboard players operation cavernBuffer player_num %= TheNumberTwo constant
execute if score cavern player_num matches 21.. run scoreboard players set cancel matchmake 1
execute if score cavernBuffer player_num matches 1 run scoreboard players set cancel matchmake 1
execute if score cavern player_num matches ..1 run scoreboard players set cancel matchmake 1

#do not abort the game if we are doing custom teams
execute if score true matchmake matches 1 run scoreboard players set cancel matchmake 0
#set players to their custom teams
execute if score true matchmake matches 1 as @a[tag=t1,tag=cavern] run team join uRed
execute if score true matchmake matches 1 as @a[tag=t2,tag=cavern] run team join uBlue
#dont need true matchmake anymore
scoreboard players set true matchmake 0

#lose the set team tags
execute as @a[tag=cavern] run function under_pack:trigger_functions/leave

#set the deathbuffer
scoreboard players set DeathBuffer constant 12

#tps players to their spawns and sets their spawnpoints
tp @a[tag=cavern,team=uRed] 58 72 -731
tp @a[tag=cavern,team=uBlue] -67 72 -735
spawnpoint @a[tag=cavern,team=uRed] 58 72 -731
spawnpoint @a[tag=cavern,team=uBlue] -67 72 -735

#cavern swag stores if the game is active or not, so it can be known if the tick should be run
scoreboard players set cavern swag 1
#which teams has control of the point, and a buffer so I know when it changes
scoreboard players set cavern team -1
scoreboard players set cavernBuffer team -1
#how many points (out of 100) does each team have
scoreboard players set red_cavern points 0
scoreboard players set blue_cavern points 0
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_cavern points 160
#a game of undercraft is active so do not run the normal oneshot code
scoreboard players set under active 1
#timer to make sure the percentage is only updated once every 1.2 seconds
scoreboard players set cavern timer 0
#amount of rounds won for each team
scoreboard players set cavern_red_wins points 0
scoreboard players set cavern_blue_wins points 0
#how many ticks is the grace period
scoreboard players set cavern_grace timer 400
#overtime timer
scoreboard players set cavern_overtime timer 60
#has overtime been toggled
scoreboard players set cavern_overtime_toggle swag 0

#fill barriers to lock teams in their spawns
#blue
fill -65 84 -741 -65 72 -729 barrier replace air
#red
fill 56 72 -737 56 90 -724 barrier replace air

#schedule the first grace tick
schedule function under_pack:cavern_functions/cavern_grace 1t

#bossbar for overtime
bossbar add count:cavern_ot "Overtime"
bossbar set count:cavern_ot color purple
bossbar set count:cavern_ot style progress
bossbar set count:cavern_ot max 60
bossbar set count:cavern_ot players @a[tag=cavern]
bossbar set count:cavern_ot value 60
#bossbar for the grace period
bossbar add count:cavern_grace "Select Your Class"
bossbar set count:cavern_grace color yellow
bossbar set count:cavern_grace style progress
bossbar set count:cavern_grace max 400
bossbar set count:cavern_grace players @a[tag=cavern]
bossbar set count:cavern_grace value 400
#bossbar for the status of the point
bossbar add count:cavern "Cavern Point"
bossbar set count:cavern color white
bossbar set count:cavern style progress
bossbar set count:cavern max 320
bossbar set count:cavern players @a[tag=cavern]
bossbar set count:cavern value 160
#Blue team's status
bossbar add count:cavern_blue "Blue Team Progress"
bossbar set count:cavern_blue color blue
bossbar set count:cavern_blue style notched_10
bossbar set count:cavern_blue max 100
bossbar set count:cavern_blue players @a[tag=cavern]
bossbar set count:cavern_blue value 0
#Red team's status
bossbar add count:cavern_red "Red Team Progress"
bossbar set count:cavern_red color red
bossbar set count:cavern_red style notched_10
bossbar set count:cavern_red max 100
bossbar set count:cavern_red players @a[tag=cavern]
bossbar set count:cavern_red value 0

#make the bossbars invisible
bossbar set count:cavern visible false
bossbar set count:cavern_blue visible false
bossbar set count:cavern_red visible false
bossbar set count:cavern_ot visible false


#the actual process of aborting the game if we need to do that
execute if score cancel matchmake matches 1 as @a[tag=cavern] run tell @s monkey
execute if score cancel matchmake matches 1 as @a[tag=cavern] run function under_pack:cavern_functions/cavern_restart
scoreboard players set cancel matchmake 0