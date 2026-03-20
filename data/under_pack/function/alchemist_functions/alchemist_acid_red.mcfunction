# Deal Damage
execute positioned ~-1 ~-0.5 ~-1 as @a[team=uBlue,dx=2,dy=2,dz=2] run damage @s 5 magic by @a[scores={class=1},team=uRed,limit=1]
execute positioned ~-1.5 ~-0.5 ~-1.5 as @a[team=uRed,dx=3,dy=3,dz=3] run damage @s 3 magic by @a[scores={class=1},team=uRed,limit=1]

# Particle
particle dust{color:[0.871,1.000,0.349],scale:1} 1 0 1 ~ ~.2 ~ 1 15 force @a 
