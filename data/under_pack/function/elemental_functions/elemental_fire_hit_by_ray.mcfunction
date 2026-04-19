tag @s add elementalHit
scoreboard players add @s elementalFireHit 1

#particles
execute at @s[team=uRed] run particle smoke ~ ~1 ~ 0.3 0.5 0.3 0.12 2 force @a[scores={class=12},team=uBlue,limit=1,sort=nearest]
execute at @s[team=uBlue] run particle smoke ~ ~1 ~ 0.3 0.5 0.3 0.12 2 force @a[scores={class=12},team=uRed,limit=1,sort=nearest]