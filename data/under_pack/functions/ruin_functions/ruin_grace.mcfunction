#remove barriers
## ISAAC
execute if score ruin_grace timer matches 0 run fill 617 43 -12 617 49 -5 air
execute if score ruin_grace timer matches 0 run fill 534 43 -5 534 48 -12 air

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