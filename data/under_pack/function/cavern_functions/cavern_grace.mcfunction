#remove barriers
execute if score cavern_grace timer matches 0 run fill -65 84 -741 -65 72 -729 air replace barrier
execute if score cavern_grace timer matches 0 run fill 56 72 -737 56 90 -724 air replace barrier


#handle bossbar visibility
execute if score cavern_grace timer matches 0 run bossbar set count:cavern visible true
execute if score cavern_grace timer matches 0 run bossbar set count:cavern_blue visible true
execute if score cavern_grace timer matches 0 run bossbar set count:cavern_red visible true
execute if score cavern_grace timer matches 0 run bossbar set count:cavern_grace visible false

#make title
execute if score cavern_grace timer matches 0 run title @a[tag=cavern] title {"text":"GOGOGOGOGOG","color":"yellow"}

#update bossbar
execute store result bossbar count:cavern_grace value run scoreboard players get cavern_grace timer

#handle iteration
execute if score cavern_grace timer matches 1.. run schedule function under_pack:cavern_functions/cavern_grace 1t
scoreboard players remove cavern_grace timer 1