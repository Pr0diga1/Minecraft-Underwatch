# Deal Damage
execute positioned ~-2 ~-0.5 ~-2 as @a[team=uRed,dx=4,dy=4,dz=4] run damage @s 5 magic by @a[scores={class=1},team=uBlue,limit=1]

# Summons marker
summon marker ~ ~ ~ {Tags:["molitov","uBlue"]}

kill @s