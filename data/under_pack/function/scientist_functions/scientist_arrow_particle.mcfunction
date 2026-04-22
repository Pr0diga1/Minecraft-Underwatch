#lightning
execute as @s[tag=sciBoltl] run particle electric_spark ~ ~ ~ 0.15 0.15 0.15 0 9

#damage
#execute as @s[tag=scidam] run particle entity_effect{color:[0.000,0.000,0.000,1.00]} ~ ~ ~ 0.1 0.1 0.1 0 2
execute as @s[tag=scidam] run particle infested ~ ~ ~ 0.1 0.1 0.1 0 3

#damage
execute as @s[tag=SciHeal] run particle entity_effect{color:[1.000,0.773,0.149,1.00]} ~ ~ ~ 0.1 0.1 0.1 0 2