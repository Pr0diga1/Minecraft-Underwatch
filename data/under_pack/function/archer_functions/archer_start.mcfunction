clear @s
item replace entity @s weapon.offhand with bow[custom_name={"color":"blue","text":"Cool Bow"},lore=['"it\'s so cool!"'],unbreakable={},enchantment_glint_override=false,enchantments={"under_pack:archer":1}] 1

item replace entity @s hotbar.0 with tipped_arrow[custom_name={"text":"Heavy Arrow","color":"dark_red","bold":true},custom_data={archerheavy:1b},potion_contents={custom_color:16711680}] 5

item replace entity @s armor.feet with leather_boots[attribute_modifiers=[{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={},enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":2}] 1
item replace entity @s armor.legs with leather_leggings[unbreakable={}]
item replace entity @s armor.chest with iron_chestplate[unbreakable={}]

scoreboard players set @s ability1 1
scoreboard players set @s ability2 1
scoreboard players set @s ability3 139

#run the class select
function under_pack:general_functions/general_character_select