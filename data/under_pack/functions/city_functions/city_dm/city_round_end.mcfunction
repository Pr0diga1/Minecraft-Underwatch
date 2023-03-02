#tp people back to spawns
tp @a[tag=city,team=uRed] 15 54 -1036
tp @a[tag=city,team=uBlue] 77 55 -1118

#which teams has control of the point, and a buffer so I know when it changes
scoreboard players set city_winning team -1
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_city points 160
#how many ticks is the grace period
scoreboard players set city_grace timer 400
#when will the point unlock
scoreboard players set city_unlock points 0

#fill barriers to lock teams in their spawns
fill 76 55 -1113 77 56 -1113 barrier
fill 24 54 -1039 23 55 -1039 barrier
fill 9 54 -1037 9 55 -1037 barrier

#resets dead players
gamemode adventure @a[tag=city]
scoreboard players set @a[tag=city] deathTimer 0
tag @a[tag=city] remove city_dead
execute as @a[tag=city] run function under_pack:general_functions/general_respawn

#heal everyone
effect give @a[tag=city] instant_health 1 100

#reset the player's class
execute as @a[tag=city] run function under_pack:general_functions/general_reset
execute as @a[tag=city] run function under_pack:general_functions/general_unselect

#bossbar visibility
bossbar set count:city visible false
bossbar set count:city_unlock visible false
bossbar set count:city_grace visible true

#schedule the grace period
schedule function under_pack:city_functions/city_dm/city_grace 1t

#bossbar for the status of the point
bossbar set count:city color white
bossbar set count:city value 160