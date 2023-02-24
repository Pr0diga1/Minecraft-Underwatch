#tp people back to spawns
##tp @a[tag=res,team=uRed] 629 43 -9
##tp @a[tag=res,team=uBlue] 522 43 -8

#which teams has control of the point, and a buffer so I know when it changes
scoreboard players set res_winning team -1
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_res points 160
#how many ticks is the grace period
scoreboard players set res_grace timer 400
#when will the point unlock
scoreboard players set res_unlock points 0

#fill barriers to lock teams in their spawns
fill -581 85 -481 -578 87 -481 barrier replace air
fill -569 85 -563 -566 87 -563 barrier replace air

#resets dead players
gamemode adventure @a[tag=res]
scoreboard players set @a[tag=res] deathTimer 0
tag @a[tag=res] remove res_dead
execute as @a[tag=res] run function under_pack:general_functions/general_respawn

#heal everyone
effect give @a[tag=res] instant_health 1 100

#reset the player's class
execute as @a[tag=res] run function under_pack:general_functions/general_reset
execute as @a[tag=res] run function under_pack:general_functions/general_unselect

#bossbar visibility
bossbar set count:res visible false
bossbar set count:res_unlock visible false
bossbar set count:res_grace visible true

#schedule the grace period
schedule function under_pack:res_functions/res_grace 1t

#bossbar for the status of the point
bossbar set count:res color white
bossbar set count:res value 160