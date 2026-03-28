item replace entity @s armor.chest with leather_chestplate[unbreakable={},attribute_modifiers=[{id:"scale",type:"scale",amount:0.3,operation:"add_value",slot:"any"}],dyed_color=15128132] 1

scoreboard players set @s ability3 0

execute unless entity @s[tag=parried] run return run playsound minecraft:item.shield.break master @s ~ ~ ~ 1 1
tag @s remove parried
tag @s remove parrying