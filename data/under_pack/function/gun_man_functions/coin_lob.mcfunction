scoreboard players set @s guncoinbuffer 10

execute at @s[team=uRed] positioned ~ ~1.5 ~ summon snowball run function under_pack:gun_man_functions/coin_velo_red
execute at @s[team=uBlue] positioned ~ ~1.5 ~ summon snowball run function under_pack:gun_man_functions/coin_velo_blue

execute at @s run playsound minecraft:block.iron_trapdoor.open master @a ~ ~ ~ 5 1