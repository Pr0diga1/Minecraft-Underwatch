#remove barriers
execute if score nylium_grace timer matches 0 run fill -613 67 92 -613 70 89 air
execute if score nylium_grace timer matches 0 run fill -496 67 89 -496 70 92 air


#handle bossbar visibility
execute if score nylium_grace timer matches 0 run bossbar set count:nylium visible true
execute if score nylium_grace timer matches 0 run bossbar set count:nylium_blue visible true
execute if score nylium_grace timer matches 0 run bossbar set count:nylium_red visible true
execute if score nylium_grace timer matches 0 run bossbar set count:nylium_grace visible false

#make title
execute if score nylium_grace timer matches 0 run title @a[tag=nylium] title {"text":"GOGOGOGOGOG","color":"yellow"}

#update bossbar
execute store result bossbar count:nylium_grace value run scoreboard players get nylium_grace timer

#handle iteration
execute if score nylium_grace timer matches 1.. run schedule function under_pack:nylium_functions/nylium_grace 1t
scoreboard players remove nylium_grace timer 1