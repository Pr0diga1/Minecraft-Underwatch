#remove barriers
#execute if score city_grace timer matches 0 run fill 617 43 -12 617 49 -5 air
#execute if score city_grace timer matches 0 run fill 534 43 -5 534 48 -12 air

#handle bossbar visibility
execute if score city_grace timer matches 0 run bossbar set count:city visible true
execute if score city_grace timer matches 0 run bossbar set count:city_blue visible true
execute if score city_grace timer matches 0 run bossbar set count:city_red visible true
execute if score city_grace timer matches 0 run bossbar set count:city_grace visible false

#make title
execute if score city_grace timer matches 0 run title @a[tag=city] title {"text":"GOGOGOGOGOG","color":"yellow"}

#update bossbar
execute store result bossbar count:city_grace value run scoreboard players get city_grace timer

#handle iteration
execute if score city_grace timer matches 1.. run schedule function under_pack:city_functions/city_point/city_grace 1t
scoreboard players remove city_grace timer 1