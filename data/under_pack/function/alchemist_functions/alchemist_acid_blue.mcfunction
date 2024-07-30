# Deal Damage
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=uRed,dx=1] run damage @s 5 magic by @a[scores={class=1},team=uBlue,limit=1]
execute positioned ~-1.5 ~-0.5 ~-1.5 as @a[team=uRed,dx=3,dy=3,dz=3] run damage @s 3 magic by @a[scores={class=1},team=uBlue,limit=1]
execute positioned ~-2 ~-0.5 ~-2 as @a[team=uRed,dx=4,dy=4,dz=4] run damage @s 1 magic by @a[scores={class=1},team=uBlue,limit=1]


# Remove tag
tag @s remove acid