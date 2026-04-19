#particles
execute at @s run particle minecraft:dust{color:[1,0,0],scale:1} ~ ~.7 ~ .3 .6 .3 .001 20 force @a
execute at @s run particle minecraft:infested ~ ~.7 ~ .3 .6 .3 0 15 force @a

#hitbox
execute at @s[team=uBlue] positioned ~-.7 ~ ~-.7 as @a[team=uRed,dx=0.4,dy=1,dz=0.4,tag=!vampredimmune] run return run function under_pack:vamp_functions/attack_bitten
execute at @s[team=uRed] positioned ~-.7 ~ ~-.7 as @a[team=uBlue,dx=0.4,dy=1,dz=0.4,tag=!vampblueimmune] run return run function under_pack:vamp_functions/attack_bitten
execute at @s[team=uBlue] positioned ^ ^ ^1 positioned ~-.7 ~ ~-.7 as @a[team=uRed,dx=0.4,dy=1,dz=0.4,tag=!vampredimmune] run return run function under_pack:vamp_functions/attack_bitten
execute at @s[team=uRed] positioned ^ ^ ^1 positioned ~-.7 ~ ~-.7 as @a[team=uBlue,dx=0.4,dy=1,dz=0.4,tag=!vampblueimmune] run return run function under_pack:vamp_functions/attack_bitten

#undo
execute if entity @s[nbt={OnGround:1b}] run tag @s remove vampdashing
execute as @s[tag=!vampdashing,team=uBlue] run tag @a[team=uRed] remove vampredimmune
execute as @s[tag=!vampdashing,team=uRed] run tag @a[team=uBlue] remove vampblueimmune