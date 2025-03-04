scoreboard players set @s ability3 0

function under_pack:bard_barian/lovers_lament_stop
execute if entity @s[team=uBlue] as @a[tag=final_stand,team=uBlue] run function under_pack:bard_barian/final_stand_stop
execute if entity @s[team=uRed] as @a[tag=final_stand,team=uRed] run function under_pack:bard_barian/final_stand_stop