#remove barriers
##execute if score res_grace timer matches 0 run fill 617 43 -12 617 49 -5 air
##execute if score res_grace timer matches 0 run fill 534 43 -5 534 48 -12 air

#handle bossbar visibility
execute if score res_grace timer matches 0 run bossbar set count:res_unlock visible true
execute if score res_grace timer matches 0 run bossbar set count:res_grace visible false

#make title
execute if score res_grace timer matches 0 run title @a[tag=res] title {"text":"GOGOGOGOGOG","color":"yellow"}

#update bossbar
execute store result bossbar count:res_grace value run scoreboard players get res_grace timer

#handle iteration
execute if score res_grace timer matches 1.. run schedule function under_pack:res_functions/res_grace 1t
scoreboard players remove res_grace timer 1