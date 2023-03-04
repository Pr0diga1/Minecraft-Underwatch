#remove barriers
execute if score ruin_grace timer matches 0 run fill 18 91 574 26 98 582 air
execute if score ruin_grace timer matches 0 run fill 18 98 528 26 91 520 air
execute if score ruin_grace timer matches 0 run fill 25 96 551 19 92 551 air

#tps players to playing field
execute if score ruin_grace timer matches 0 as @a[tag=ruin,team=uRed] at @s run tp @s ~ ~-24.8 ~1
execute if score ruin_grace timer matches 0 as @a[tag=ruin,team=uBlue] at @s run tp @s ~ ~-24.8 ~-1

#handle bossbar visibility
execute if score ruin_grace timer matches 0 run bossbar set count:ruin_unlock visible true
execute if score ruin_grace timer matches 0 run bossbar set count:ruin_grace visible false

#make title
execute if score ruin_grace timer matches 0 run title @a[tag=ruin] title {"text":"GOGOGOGOGOG","color":"yellow"}

#update bossbar
execute store result bossbar count:ruin_grace value run scoreboard players get ruin_grace timer

#handle iteration
execute if score ruin_grace timer matches 1.. run schedule function under_pack:ruin_functions/ruin_grace 1t
scoreboard players remove ruin_grace timer 1