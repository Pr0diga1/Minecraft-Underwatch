#the marker has existed for another tick
scoreboard players add @s wizardDistance 1

#move the marker
tp @s ^ ^ ^0.4

#particle
particle dust 0 0.349 0.58 1 ~ ~ ~ 0 0 0 0 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run kill @s
execute if score @s wizardDistance matches 12.. run kill @s

#hits a player
execute if entity @s[tag=redWizardSpellSmall] positioned ~ ~ ~ as @a[dx=0,team=uBlue,scores={wizardRedHit=0}] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function under_pack:wizard_functions/wizard_spell_small_hit
execute if entity @s[tag=blueWizardSpellSmall] positioned ~ ~ ~ as @a[dx=0,team=uRed,scores={wizardBlueHit=0}] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function under_pack:wizard_functions/wizard_spell_small_hit
