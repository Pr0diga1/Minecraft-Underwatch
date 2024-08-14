#remove barriers
execute if score lake_grace timer matches 0 run fill -507 86 -474 -510 88 -474 air
execute if score lake_grace timer matches 0 run fill -495 88 -557 -498 86 -557 air


#handle bossbar visibility
execute if score lake_grace timer matches 0 run bossbar set count:lake visible true
execute if score lake_grace timer matches 0 run bossbar set count:lake_blue visible true
execute if score lake_grace timer matches 0 run bossbar set count:lake_red visible true
execute if score lake_grace timer matches 0 run bossbar set count:lake_grace visible false

#make title
execute if score lake_grace timer matches 0 run title @a[tag=lake] title {"text":"GOGOGOGOGOG","color":"yellow"}

#update bossbar
execute store result bossbar count:lake_grace value run scoreboard players get lake_grace timer

#handle iteration
execute if score lake_grace timer matches 1.. run schedule function under_pack:lake_functions/lake_grace 1t
scoreboard players remove lake_grace timer 1