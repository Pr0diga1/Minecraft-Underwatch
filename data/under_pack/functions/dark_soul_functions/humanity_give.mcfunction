execute if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:ender_eye"}]}] run give @s ender_eye{CustomModelData:5,humanity:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:ender_eye"}]}] run item replace entity @s hotbar.8 with ender_eye{CustomModelData:5,humanity:1b} 1
execute if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:ender_eye",Count:4b}]}] run clear @s ender_eye 1
scoreboard players set @s ultKills 0