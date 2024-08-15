#resets dead players
gamemode adventure @a[tag=nylium]
scoreboard players set @a[tag=nylium] deathTimer 0
tag @a[tag=nylium] remove nylium_dead

#resets the players' classes
execute as @a[tag=nylium] run function under_pack:general_functions/general_reset
execute as @a[tag=nylium] run function under_pack:general_functions/general_unselect

#resets the players
execute as @a[tag=nylium] run function under_pack:general_functions/general_restart

#resets all of the variables declared in the start
scoreboard players reset nylium team
scoreboard players reset red_nylium points
scoreboard players reset blue_nylium points
scoreboard players reset cap_nylium points
scoreboard players reset nylium timer
scoreboard players reset nylium_red_wins points
scoreboard players reset nylium_blue_wins points
scoreboard players set under active 0
scoreboard players set nylium swag 0
scoreboard players reset nylium_grace timer
scoreboard players reset nylium_overtime timer
scoreboard players reset nylium_overtime_toggle swag

#unfill barriers
fill -613 67 92 -613 70 89 air
fill -496 67 89 -496 70 92 air

#removes the tag from players
tag @s remove nylium

#unschedule grace ticks
schedule clear under_pack:nylium_functions/nylium_grace

#removes the bossbars
bossbar remove count:nylium
bossbar remove count:nylium_blue
bossbar remove count:nylium_red
bossbar remove count:nylium_grace
bossbar remove count:nylium_ot