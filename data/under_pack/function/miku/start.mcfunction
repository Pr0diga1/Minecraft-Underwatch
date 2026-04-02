clear @s

## Abilities
# Rifle
item replace entity @s hotbar.0 with copper_hoe[custom_data={miku:true,rifle:true},custom_name={"bold":true,"color":"#F72D2D","italic":false,"text":"Teto Rifle"},consumable={consume_seconds:999999,animation:"bow"}] 1

# Rifle timing
scoreboard players set @s ability1 0
# Rifle Ammo
scoreboard players set @a ability2 16

# Current swapped item
scoreboard players set @a ability3 0

# Shotgun Loaded
scoreboard players set @s ability4 0

# Armor
item replace entity @s armor.feet with netherite_boots[unbreakable={},enchantments={"blast_protection":8,"depth_strider":2},attribute_modifiers=[{id:"armor",type:"armor",amount:6,operation:"add_value"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],trim={material:"minecraft:diamond",pattern:"minecraft:snout"}] 1
item replace entity @s armor.legs with netherite_leggings[unbreakable={},trim={material:"minecraft:diamond",pattern:"minecraft:host"}] 1
item replace entity @s armor.chest with leather_chestplate[unbreakable={},dyed_color=16777215,trim={material:"minecraft:diamond",pattern:"minecraft:vex"}] 1
item replace entity @s armor.feet with diamond_helmet[unbreakable={},attribute_modifiers=[{id:"armor",type:"armor",amount:0,operation:"add_value"}]] 1

function under_pack:general_functions/general_character_select

experience set @s 16 levels

