#resets dead players
gamemode adventure @a[tag=gazebo]
scoreboard players set @a[tag=gazebo] deathTimer 0
tag @a[tag=gazebo] remove gazebo_dead

#resets the players' classes
execute as @a[tag=gazebo] run function under_pack:general_functions/general_reset
execute as @a[tag=gazebo] run function under_pack:general_functions/general_unselect

#resets the players
execute as @a[tag=gazebo] run function under_pack:general_functions/general_restart

#resets all of the variables declared in the start
scoreboard players reset gazebo team
scoreboard players reset red_gazebo points
scoreboard players reset blue_gazebo points
scoreboard players reset cap_gazebo points
scoreboard players reset gazebo timer
scoreboard players reset gazebo_red_wins points
scoreboard players reset gazebo_blue_wins points
scoreboard players set under active 0
scoreboard players set gazebo swag 0
scoreboard players reset gazebo_grace timer
scoreboard players reset gazebo_overtime timer
scoreboard players reset gazebo_overtime_toggle swag

#unfill barriers
fill 617 43 -12 617 49 -5 air
fill 534 43 -5 534 48 -12 air

#removes the tag from players
tag @s remove gazebo

#unschedule grace ticks
schedule clear under_pack:gazebo_functions/gazebo_grace

#removes the bossbars
bossbar remove count:gazebo
bossbar remove count:gazebo_blue
bossbar remove count:gazebo_red
bossbar remove count:gazebo_grace
bossbar remove count:gazebo_ot