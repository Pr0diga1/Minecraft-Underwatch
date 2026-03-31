experience set @s 100 levels
experience set @s 0 points
scoreboard players reset @s vampblood
scoreboard players set @s vampdetect -1
execute if entity @s[team=uRed] as @a[tag=taintedred] run function under_pack:vamp_functions/taint_reset
execute if entity @s[team=uBlue] as @a[tag=taintedblue] run function under_pack:vamp_functions/taint_reset


scoreboard players set @s vampattack 0
scoreboard players set @s vampattackbuffer 0
item replace entity @s armor.chest with leather_chestplate[dyed_color=0,trim={material:"minecraft:redstone",pattern:"minecraft:vex"},unbreakable={},attribute_modifiers=[{id:"armor",type:"armor",amount:0,operation:"add_value",slot:"any"}]] 1
