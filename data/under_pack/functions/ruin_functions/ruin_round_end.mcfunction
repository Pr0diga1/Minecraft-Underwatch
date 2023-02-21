#tp people back to spawns
##Isaac
tp @a[tag=ruin,team=uRed] 629 43 -9
tp @a[tag=ruin,team=uBlue] 522 43 -8

#which teams has control of the point, and a buffer so I know when it changes
scoreboard players set ruin_winning team -1
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_ruin points 160
#how many ticks is the grace period
scoreboard players set ruin_grace timer 400
#when will the point unlock
scoreboard players set ruin_unlock points 0

#fill barriers to lock teams in their spawns
##Isaac
fill 617 43 -12 617 49 -5 barrier
fill 534 43 -5 534 48 -12 barrier

#resets dead players
gamemode adventure @a[tag=ruin]
scoreboard players set @a[tag=ruin] deathTimer 0
tag @a[tag=ruin] remove ruin_dead
execute as @a[tag=ruin] run function under_pack:general_functions/general_respawn

#heal everyone
effect give @a[tag=ruin] instant_health 1 100

#reset the player's class
execute as @a[tag=ruin] run function under_pack:general_functions/general_reset
execute as @a[tag=ruin] run function under_pack:general_functions/general_unselect

#bossbar visibility
bossbar set count:ruin visible false
bossbar set count:ruin_unlock visible false
bossbar set count:ruin_grace visible true

#schedule the grace period
schedule function under_pack:ruin_functions/ruin_grace 1t

#bossbar for the status of the point
bossbar set count:ruin color white
bossbar set count:ruin value 160