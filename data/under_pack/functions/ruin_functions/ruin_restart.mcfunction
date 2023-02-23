#resets dead players
gamemode adventure @a[tag=ruin]
scoreboard players set @a[tag=ruin] deathTimer 0
tag @a[tag=ruin] remove ruin_dead

#resets the players' classes
execute as @a[tag=ruin] run function under_pack:general_functions/general_reset
execute as @a[tag=ruin] run function under_pack:general_functions/general_unselect

#resets the players
execute as @a[tag=ruin] run function under_pack:general_functions/general_restart

#resets all of the variables declared in the start
scoreboard players reset cap_ruin points
scoreboard players reset ruin_red_wins points
scoreboard players reset ruin_blue_wins points
scoreboard players set under active 0
scoreboard players set ruin swag 0
scoreboard players reset ruin_grace timer
scoreboard players reset ruin_unlock points
scoreboard players reset ruin_winning points

#sidebar
scoreboard objectives setdisplay sidebar Kills
scoreboard players reset RED pointscapped
scoreboard players reset BLUE pointscapped

#unfill barriers
## ISAAC
fill 617 43 -12 617 49 -5 air
fill 534 43 -5 534 48 -12 air

#removes the tag from players
tag @s remove ruin

#unschedule grace ticks
schedule clear under_pack:ruin_functions/ruin_grace

#removes the bossbars
bossbar remove count:ruin
bossbar remove count:ruin_grace
bossbar remove count:ruin_unlock