#resets dead players
gamemode adventure @a[tag=cavern]
scoreboard players set @a[tag=cavern] deathTimer 0

#resets the players' classes
execute as @a[tag=cavern] run function under_pack:general_functions/general_reset
execute as @a[tag=cavern] run function under_pack:general_functions/general_unselect

#resets the players
execute as @a[tag=cavern] run function under_pack:general_functions/general_restart

#resets all of the variables declared in the start
scoreboard players reset cavern team
scoreboard players reset red_cavern points
scoreboard players reset blue_cavern points
scoreboard players reset cap_cavern points
scoreboard players reset cavern timer
scoreboard players reset cavern_red_wins points
scoreboard players reset cavern_blue_wins points
scoreboard players set under active 0
scoreboard players set cavern swag 0
scoreboard players reset cavern_grace timer
scoreboard players reset cavern_overtime timer
scoreboard players reset cavern_overtime_toggle swag

#unfill barriers
#blue
fill -65 84 -741 -65 72 -729 air replace barrier
#red
fill 56 72 -737 56 90 -724 air replace barrier

#removes the tag from players
tag @s remove cavern

#unschedule grace ticks
schedule clear under_pack:cavern_functions/cavern_grace

#removes the bossbars
bossbar remove count:cavern
bossbar remove count:cavern_blue
bossbar remove count:cavern_red
bossbar remove count:cavern_grace
bossbar remove count:cavern_ot