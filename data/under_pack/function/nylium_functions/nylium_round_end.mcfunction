#tp people back to spawns
tp @a[tag=nylium,team=uRed] -492 67 90
tp @a[tag=nylium,team=uBlue] -617 67 91

execute as @a[tag=nylium] run trigger menu

#which teams has control of the point, and a buffer so I know when it changes
scoreboard players set nylium team -1
scoreboard players set nyliumBuffer team -1
#how many points (out of 100) does each team have
scoreboard players set red_nylium points 0
scoreboard players set blue_nylium points 0
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_nylium points 160
#timer to make sure the percentage is only updated once every 1.2 seconds
scoreboard players set nylium timer 0
#how many ticks is the grace period
scoreboard players set nylium_grace timer 400
#overtime timer
scoreboard players set nylium_overtime timer 60
#has overtime been toggled
scoreboard players set nylium_overtime_toggle swag 0

#fill barriers to lock teams in their spawns
fill -613 67 92 -613 70 89 barrier
#red
fill -496 67 89 -496 70 92 barrier

#resets dead players
gamemode adventure @a[tag=nylium]
scoreboard players set @a[tag=nylium] deathTimer 0
tag @a[tag=nylium] remove uDead
execute as @a[tag=nylium] run function under_pack:general_functions/general_respawn

#heal everyone
effect give @a[tag=nylium] instant_health 1 100

#reset the player's class
execute as @a[tag=nylium] run function under_pack:general_functions/general_reset
execute as @a[tag=nylium] run function under_pack:general_functions/general_unselect

#bossbar visibility
bossbar set count:nylium visible false
bossbar set count:nylium_blue visible false
bossbar set count:nylium_red visible false
bossbar set count:nylium_ot visible false
bossbar set count:nylium_grace visible true

#schedule the grace period
schedule function under_pack:nylium_functions/nylium_grace 1t

#bossbar for the status of the point
bossbar set count:nylium color white
bossbar set count:nylium value 160
#Blue team's status
bossbar set count:nylium_blue value 0
#Red team's status
bossbar set count:nylium_red value 0