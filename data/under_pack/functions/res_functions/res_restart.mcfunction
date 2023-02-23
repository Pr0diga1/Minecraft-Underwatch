#resets dead players
gamemode adventure @a[tag=res]
scoreboard players set @a[tag=res] deathTimer 0
tag @a[tag=res] remove res_dead

#resets the players' classes
execute as @a[tag=res] run function under_pack:general_functions/general_reset
execute as @a[tag=res] run function under_pack:general_functions/general_unselect

#resets the players
execute as @a[tag=res] run function under_pack:general_functions/general_restart

#resets all of the variables declared in the start
scoreboard players reset cap_res points
scoreboard players reset res_red_wins points
scoreboard players reset res_blue_wins points
scoreboard players set under active 0
scoreboard players set res swag 0
scoreboard players reset res_grace timer
scoreboard players reset res_unlock points
scoreboard players reset res_winning points

#sidebar
scoreboard objectives setdisplay sidebar Kills
scoreboard players reset RED pointscapped
scoreboard players reset BLUE pointscapped

#unfill barriers
##fill 617 43 -12 617 49 -5 air
##fill 534 43 -5 534 48 -12 air

#removes the tag from players
tag @s remove res

#unschedule grace ticks
schedule clear under_pack:res_functions/res_grace

#removes the bossbars
bossbar remove count:res
bossbar remove count:res_grace
bossbar remove count:res_unlock