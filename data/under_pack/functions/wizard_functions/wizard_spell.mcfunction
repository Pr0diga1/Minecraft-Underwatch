#reset
experience set @s 100 levels
experience set @s 0 points
scoreboard players set @s ability3 0
scoreboard players reset @s reset

#summon the markers
execute at @s[team=uRed] run summon marker ~ ~ ~ {Tags:["redWizardSpell"]}
execute at @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["blueWizardSpell"]}

#playsound and texture
execute at @s run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~
item modify entity @s hotbar.0 under_pack:wizard/main_cooldown

#tp the markers to the player to get their rotation
execute at @s anchored eyes run tp @e[type=marker,sort=nearest,limit=1] @s
execute at @s as @e[type=marker,limit=1,sort=nearest] at @s run tp @s ~ ~1.62 ~