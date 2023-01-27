#tp the markers every tick
execute as @s[team=uRed] at @s if entity @e[type=firework_rocket,tag=redWizardHeal] run tp @e[type=marker,tag=redWizardStand] @e[type=firework_rocket,tag=redWizardHeal,limit=1,sort=nearest]
execute as @s[team=uBlue] at @s if entity @e[type=firework_rocket,tag=blueWizardHeal] run tp @e[type=marker,tag=blueWizardStand] @e[type=firework_rocket,tag=blueWizardHeal,limit=1,sort=nearest]

#do the healing
execute as @s[team=uRed] at @e[type=marker,tag=redWizardStand] unless entity @e[type=firework_rocket,tag=redWizardHeal] run effect give @a[team=uRed,distance=..5] instant_health 1 1
execute as @s[team=uBlue] at @e[type=marker,tag=blueWizardStand] unless entity @e[type=firework_rocket,tag=blueWizardHeal] run effect give @a[team=uBlue,distance=..5] instant_health 1 1

#kill the marker
execute as @s[team=uRed] unless entity @e[type=firework_rocket,tag=redWizardHeal] run kill @e[type=marker,tag=redWizardStand]
execute as @s[team=uBlue] unless entity @e[type=firework_rocket,tag=blueWizardHeal] run kill @e[type=marker,tag=blueWizardStand]