# Deal Damage
execute positioned ~-2 ~-0.5 ~-2 as @a[team=uBlue,dx=4,dy=4,dz=4] run damage @s 5 magic by @a[scores={class=1},team=uRed,limit=1]

# Summons marker
summon marker ~ ~ ~ {Tags:["molitov","uRed"]}
playsound entity.generic.explode master @a ~ ~ ~ 0.5 1.5
particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 10
particle minecraft:flame ~ ~1 ~ 2 2 2 0.2 20
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 10