execute if entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:splash_potion"}]}] run item modify entity @s hotbar.0 under_pack:alchemist/acid_count
execute unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:splash_potion"}]}] run item replace entity @s hotbar.0 with splash_potion{display:{Name:'{"text":"Acid","color":"#8FC219","bold":true,"italic":false}'},CustomModelData:2,acid:1b,Enchantments:[{}],CustomPotionColor:16777215} 1
tag @s remove reload_main
