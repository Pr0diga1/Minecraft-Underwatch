#tp people back to spawns
tp @a[tag=gazebo,team=uRed] -1578 57 -574
tp @a[tag=gazebo,team=uBlue] -1685 57 -573

#which teams has control of the point, and a buffer so I know when it changes
scoreboard players set gazebo team -1
scoreboard players set gazeboBuffer team -1
#how many points (out of 100) does each team have
scoreboard players set red_gazebo points 0
scoreboard players set blue_gazebo points 0
#what is the status of the point, used for how long it takes to uncap it
scoreboard players set cap_gazebo points 160
#timer to make sure the percentage is only updated once every 1.2 seconds
scoreboard players set gazebo timer 0
#how many ticks is the grace period
scoreboard players set gazebo_grace timer 400
#overtime timer
scoreboard players set gazebo_overtime timer 60
#has overtime been toggled
scoreboard players set gazebo_overtime_toggle swag 0

#fill barriers to lock teams in their spawns
fill -1590 57 -577 -1590 61 -570 barrier
fill -1673 57 -570 -1673 61 -577 barrier

#resets dead players
gamemode adventure @a[tag=gazebo]
scoreboard players set @a[tag=gazebo] deathTimer 0
tag @a[tag=gazebo] remove gazebo_dead
execute as @a[tag=gazebo] run function under_pack:general_functions/general_respawn

#bossbar visibility
bossbar set count:gazebo visible false
bossbar set count:gazebo_blue visible false
bossbar set count:gazebo_red visible false
bossbar set count:gazebo_ot visible false
bossbar set count:gazebo_grace visible true

#schedule the grace period
schedule function under_pack:gazebo_functions/gazebo_grace 1t

#bossbar for the status of the point
bossbar set count:gazebo color white
bossbar set count:gazebo value 160
#Blue team's status
bossbar set count:gazebo_blue value 0
#Red team's status
bossbar set count:gazebo_red value 0