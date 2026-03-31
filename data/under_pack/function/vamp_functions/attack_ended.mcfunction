#reset attack tracker
scoreboard players set @s vampattack 0

#replace attributes
item replace entity @s armor.chest with leather_chestplate[dyed_color=0,trim={material:"minecraft:redstone",pattern:"minecraft:vex"},unbreakable={},attribute_modifiers=[{id:"armor",type:"armor",amount:0,operation:"add_value",slot:"any"}]] 1
