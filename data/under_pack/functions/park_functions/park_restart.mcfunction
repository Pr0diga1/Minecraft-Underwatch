#resets dead players
gamemode adventure @a[tag=park]
scoreboard players set @a[tag=park] deathTimer 0
tag @a[tag=park] remove park_dead

#resets the players' classes
execute as @a[tag=park] run function under_pack:general_functions/general_reset
execute as @a[tag=park] run function under_pack:general_functions/general_unselect

#resets the players
execute as @a[tag=park] run function under_pack:general_functions/general_restart

#resets all of the variables declared in the start
scoreboard players reset cap_park points
scoreboard players reset park_red_wins points
scoreboard players reset park_blue_wins points
scoreboard players set under active 0
scoreboard players set park swag 0
scoreboard players reset park_grace timer
scoreboard players reset park_unlock points
scoreboard players reset park_winning points

#sidebar
scoreboard objectives setdisplay sidebar Kills
scoreboard players reset RED pointscapped
scoreboard players reset BLUE pointscapped

#unfill barriers
fill 617 43 -12 617 49 -5 air
fill 534 43 -5 534 48 -12 air

#removes the tag from players
tag @s remove park

#unschedule grace ticks
schedule clear under_pack:park_functions/park_grace

#removes the bossbars
bossbar remove count:park
bossbar remove count:park_grace
bossbar remove count:park_unlock