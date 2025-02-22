
execute at @s as @a[team=uBlue,distance=..3] run damage @s 4.2 player_attack by @a[team=uRed,limit=1,scores={class=18}]
execute at @s positioned ~ ~.4 ~ run function under_pack:coldsteel_functions/particle
execute at @s run playsound minecraft:entity.ender_dragon.growl master @a[distance=..3] ~ ~ ~ 0.2 2

damage @s 2
