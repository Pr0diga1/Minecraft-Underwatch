#remove barriers
execute if score res_grace timer matches 0 run fill -581 85 -481 -578 87 -481 air replace barrier
execute if score res_grace timer matches 0 run fill -566 85 -561 -569 87 -561 air replace barrier

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