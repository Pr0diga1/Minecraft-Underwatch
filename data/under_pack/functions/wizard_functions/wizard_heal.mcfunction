#give tag to the health firework
execute as @s[team=uRed] run tag @e[type=firework_rocket,limit=1,sort=nearest] add redWizardHeal
execute as @s[team=uBlue] run tag @e[type=firework_rocket,limit=1,sort=nearest] add blueWizardHeal

#give an armor stand to the heal firework
execute as @s[team=uRed] at @s run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["redWizardStand"]}
execute as @s[team=uBlue] at @s run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["blueWizardStand"]}

scoreboard players set @s ability3 0
item replace entity @s hotbar.4 with air