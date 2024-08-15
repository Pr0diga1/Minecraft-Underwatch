#tp people back to spawns
tp @a[tag=cavern,team=uRed] 58 72 -731
tp @a[tag=cavern,team=uBlue] -67 72 -735

#which teams has control of the point, and a buffer so I know when it changes
scoreboard players set cavern team -1
scoreboard players set cavernBuffer team -1
#how many points (out of 100) does each team have
scoreboard players set red_cavern points 0
scoreboard players set blue_cavern points 0
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_cavern points 160
#timer to make sure the percentage is only updated once every 1.2 seconds
scoreboard players set cavern timer 0
#how many ticks is the grace period
scoreboard players set cavern_grace timer 400
#overtime timer
scoreboard players set cavern_overtime timer 60
#has overtime been toggled
scoreboard players set cavern_overtime_toggle swag 0

#fill barriers to lock teams in their spawns
fill -65 84 -741 -65 72 -729 barrier replace air
#red
fill 56 72 -737 56 90 -724 barrier replace air

#resets dead players
gamemode adventure @a[tag=cavern]
scoreboard players set @a[tag=cavern] deathTimer 0
tag @a[tag=cavern] remove cavern_dead
execute as @a[tag=cavern] run function under_pack:general_functions/general_respawn

#heal everyone
effect give @a[tag=cavern] instant_health 1 100

#reset the player's class
execute as @a[tag=cavern] run function under_pack:general_functions/general_reset
execute as @a[tag=cavern] run function under_pack:general_functions/general_unselect

#bossbar visibility
bossbar set count:cavern visible false
bossbar set count:cavern_blue visible false
bossbar set count:cavern_red visible false
bossbar set count:cavern_ot visible false
bossbar set count:cavern_grace visible true

#schedule the grace period
schedule function under_pack:cavern_functions/cavern_grace 1t

#bossbar for the status of the point
bossbar set count:cavern color white
bossbar set count:cavern value 160
#Blue team's status
bossbar set count:cavern_blue value 0
#Red team's status
bossbar set count:cavern_red value 0