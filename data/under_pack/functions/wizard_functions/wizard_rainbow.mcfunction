#reset
scoreboard players set @s ability1 0
item replace entity @s hotbar.2 with air
scoreboard players reset @s reset

#summon the markers
execute at @s[team=uRed] run summon marker ~ ~ ~ {Tags:["redWizardRainbow"]}
execute at @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["blueWizardRainbow"]}

#playsound
#execute at @s run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~

#tp the markers to the player to get their rotation
execute at @s anchored eyes run tp @e[type=marker,sort=nearest,limit=1] @s
execute at @s as @e[type=marker,limit=1,sort=nearest] at @s run tp @s ~ ~1.62 ~