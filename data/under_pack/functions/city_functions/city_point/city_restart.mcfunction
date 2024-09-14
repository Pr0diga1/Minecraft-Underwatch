#resets dead players
gamemode adventure @a[tag=city]
scoreboard players set @a[tag=city] deathTimer 0
tag @a[tag=city] remove city_dead

#resets the players' classes
execute as @a[tag=city] run function under_pack:general_functions/general_reset
execute as @a[tag=city] run function under_pack:general_functions/general_unselect

#resets the players
execute as @a[tag=city] run function under_pack:general_functions/general_restart

#resets all of the variables declared in the start
scoreboard players reset city team
scoreboard players reset red_city points
scoreboard players reset blue_city points
scoreboard players reset cap_city points
scoreboard players reset city timer
scoreboard players reset city_red_wins points
scoreboard players reset city_blue_wins points
scoreboard players set under active 0
scoreboard players set cityPOINT swag 0
scoreboard players reset city_grace timer
scoreboard players reset city_overtime timer
scoreboard players reset city_overtime_toggle swag

#unfill barriers
fill 76 55 -1113 77 56 -1113 air
fill 24 54 -1039 23 55 -1039 air
fill 9 54 -1037 9 55 -1037 air

#removes the tag from players
tag @s remove city

#unschedule grace ticks
schedule clear under_pack:city_functions/city_point/city_grace

#removes the bossbars
bossbar remove count:city
bossbar remove count:city_blue
bossbar remove count:city_red
bossbar remove count:city_grace
bossbar remove count:city_ot