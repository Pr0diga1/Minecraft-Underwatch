scoreboard players set @s ability3 1

execute if entity @s[team=uBlue] as @a[tag=marching,team=uBlue] run function under_pack:bard_barian/marching_stop
execute if entity @s[team=uRed] as @a[tag=marching,team=uRed] run function under_pack:bard_barian/marching_stop
execute if entity @s[team=uBlue] as @a[tag=final_stand,team=uBlue] run function under_pack:bard_barian/final_stand_stop
execute if entity @s[team=uRed] as @a[tag=final_stand,team=uRed] run function under_pack:bard_barian/final_stand_stop