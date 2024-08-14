#tp people back to spawns
tp @a[tag=lake,team=uRed] -497 86 -575
tp @a[tag=lake,team=uBlue] -508 86 -457

#which teams has control of the point, and a buffer so I know when it changes
scoreboard players set lake team -1
scoreboard players set lakeBuffer team -1
#how many points (out of 100) does each team have
scoreboard players set red_lake points 0
scoreboard players set blue_lake points 0
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_lake points 160
#timer to make sure the percentage is only updated once every 1.2 seconds
scoreboard players set lake timer 0
#how many ticks is the grace period
scoreboard players set lake_grace timer 400
#overtime timer
scoreboard players set lake_overtime timer 60
#has overtime been toggled
scoreboard players set lake_overtime_toggle swag 0

#fill barriers to lock teams in their spawns
fill -507 86 -474 -510 88 -474 barrier
#red
fill -495 88 -557 -498 86 -557 barrier

#resets dead players
gamemode adventure @a[tag=lake]
scoreboard players set @a[tag=lake] deathTimer 0
tag @a[tag=lake] remove lake_dead
execute as @a[tag=lake] run function under_pack:general_functions/general_respawn

#heal everyone
effect give @a[tag=lake] instant_health 1 100

#reset the player's class
execute as @a[tag=lake] run function under_pack:general_functions/general_reset
execute as @a[tag=lake] run function under_pack:general_functions/general_unselect

#bossbar visibility
bossbar set count:lake visible false
bossbar set count:lake_blue visible false
bossbar set count:lake_red visible false
bossbar set count:lake_ot visible false
bossbar set count:lake_grace visible true

#schedule the grace period
schedule function under_pack:lake_functions/lake_grace 1t

#bossbar for the status of the point
bossbar set count:lake color white
bossbar set count:lake value 160
#Blue team's status
bossbar set count:lake_blue value 0
#Red team's status
bossbar set count:lake_red value 0