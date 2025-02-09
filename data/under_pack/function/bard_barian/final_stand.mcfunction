scoreboard players set @s ability3 2
playsound minecraft:music_disc.otherside music @a ~ ~ ~ 1 1
schedule function under_pack:bard_barian/final_stand_music 195s append

function under_pack:bard_barian/lovers_lament_stop
execute if entity @s[team=uBlue] as @a[tag=marching,team=uBlue] run function under_pack:bard_barian/marching_stop
execute if entity @s[team=uRed] as @a[tag=marching,team=uRed] run function under_pack:bard_barian/marching_stop