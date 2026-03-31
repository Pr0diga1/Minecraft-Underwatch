#sound
execute if score @s vampattack matches 112 run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 0.8 0.8

#particles
execute at @s run particle minecraft:dust{color:[1,0,0],scale:1} ~ ~.7 ~ .3 .6 .3 .001 20 force @a
execute at @s run particle minecraft:infested ~ ~.7 ~ .3 .6 .3 0 15 force @a

#hitbox
execute at @s[team=uBlue] at @s anchored feet positioned ~-.5 ~ ~-.5 as @a[team=uRed,dx=0,dy=1,dz=0] run function under_pack:vamp_functions/attack_bitten
execute at @s[team=uRed] at @s anchored feet positioned ~-.5 ~ ~-.5 as @a[team=uBlue,dx=0,dy=1,dz=0] run function under_pack:vamp_functions/attack_bitten