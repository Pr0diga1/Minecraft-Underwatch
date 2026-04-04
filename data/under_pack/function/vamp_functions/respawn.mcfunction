scoreboard players set @s vampdetect -1
scoreboard players set @s vampattack 0
scoreboard players set @s vampattackbuffer 0
execute if entity @s[team=uRed] run kill @e[tag=vampguy,tag=red]
execute if entity @s[team=uRed] run kill @e[tag=vamplode,tag=red]
execute if entity @s[team=uBlue] run kill @e[tag=vampguy,tag=blue]
execute if entity @s[team=uBlue] run kill @e[tag=vamplode,tag=blue]
item replace entity @s armor.chest with leather_chestplate[dyed_color=0,trim={material:"minecraft:redstone",pattern:"minecraft:vex"},unbreakable={},attribute_modifiers=[{id:"armor",type:"armor",amount:0,operation:"add_value",slot:"any"}]] 1
