#remove barriers
execute if score park_grace timer matches 0 run fill 617 43 -12 617 49 -5 air
execute if score park_grace timer matches 0 run fill 534 43 -5 534 48 -12 air

#handle bossbar visibility
execute if score park_grace timer matches 0 run bossbar set count:park_unlock visible true
execute if score park_grace timer matches 0 run bossbar set count:park_grace visible false

#make title
execute if score park_grace timer matches 0 run title @a[tag=park] title {"text":"GOGOGOGOGOG","color":"yellow"}

#update bossbar
execute store result bossbar count:park_grace value run scoreboard players get park_grace timer

#handle iteration
execute if score park_grace timer matches 1.. run schedule function under_pack:park_functions/park_grace 1t
scoreboard players remove park_grace timer 1