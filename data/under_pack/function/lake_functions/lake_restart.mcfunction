#resets dead players
gamemode adventure @a[tag=lake]
scoreboard players set @a[tag=lake] deathTimer 0
tag @a[tag=lake] remove lake_dead

#resets the players' classes
execute as @a[tag=lake] run function under_pack:general_functions/general_reset
execute as @a[tag=lake] run function under_pack:general_functions/general_unselect

#resets the players
execute as @a[tag=lake] run function under_pack:general_functions/general_restart

#resets all of the variables declared in the start
scoreboard players reset lake team
scoreboard players reset red_lake points
scoreboard players reset blue_lake points
scoreboard players reset cap_lake points
scoreboard players reset lake timer
scoreboard players reset lake_red_wins points
scoreboard players reset lake_blue_wins points
scoreboard players set under active 0
scoreboard players set lake swag 0
scoreboard players reset lake_grace timer
scoreboard players reset lake_overtime timer
scoreboard players reset lake_overtime_toggle swag

#unfill barriers
fill -507 86 -474 -510 88 -474 air
fill -495 88 -557 -498 86 -557 air

#removes the tag from players
tag @s remove lake

#unschedule grace ticks
schedule clear under_pack:lake_functions/lake_grace

#removes the bossbars
bossbar remove count:lake
bossbar remove count:lake_blue
bossbar remove count:lake_red
bossbar remove count:lake_grace
bossbar remove count:lake_ot