#remove barriers
execute if score city_grace timer matches 0 run fill 76 55 -1113 77 56 -1113 air
execute if score city_grace timer matches 0 run fill 24 54 -1039 23 55 -1039 air
execute if score city_grace timer matches 0 run fill 9 54 -1037 9 55 -1037 air

#handle bossbar visibility
execute if score city_grace timer matches 0 run bossbar set count:city_unlock visible true
execute if score city_grace timer matches 0 run bossbar set count:city_grace visible false

#make title
execute if score city_grace timer matches 0 run title @a[tag=city] title {"text":"GOGOGOGOGOG","color":"yellow"}

#update bossbar
execute store result bossbar count:city_grace value run scoreboard players get city_grace timer

#handle iteration
execute if score city_grace timer matches 1.. run schedule function under_pack:city_functions/city_dm/city_grace 1t
scoreboard players remove city_grace timer 1