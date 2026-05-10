clear @s

## Abilities
# Rifle
item replace entity @s hotbar.0 with copper_hoe[custom_data={miku:true,rifle:true},custom_name={"bold":true,"color":"#F72D2D","italic":false,"text":"Teto Rifle"},consumable={consume_seconds:999999,animation:"bow"}] 1
# Beam
item replace entity @s hotbar.1 with soul_torch[custom_data={miku:true,beam:true},custom_name={"bold":true,"color":"#40CFCF","italic":false,"text":"Miku (Miku) Beam","underlined":true},consumable={consume_seconds:1.5,animation:"spyglass",sound:"block.beacon.ambient",has_consume_particles:false},use_cooldown={seconds:5}] 1
# Shotgun
item replace entity @s hotbar.2 with bamboo[unbreakable={},custom_data={miku:true,shotty:true},custom_name={"bold":true,"color":"#218004","italic":false,"text":"Leek Shotgun"},item_model="minecraft:bamboo",enchantments={"under_pack:miku/shotgun":1},consumable={consume_seconds:9999999,animation:"crossbow",has_consume_particles:false}] 1


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
item replace entity @s armor.legs with netherite_leggings[unbreakable={},trim={material:"minecraft:diamond",pattern:"minecraft:host"},attribute_modifiers=[{id:"armor",type:"armor",amount:0,operation:"add_value"}]] 1
item replace entity @s armor.chest with leather_chestplate[unbreakable={},dyed_color=16777215,trim={material:"minecraft:diamond",pattern:"minecraft:vex"},attribute_modifiers=[{id:"armor",type:"armor",amount:0,operation:"add_value"}]] 1
item replace entity @s armor.head with diamond_helmet[unbreakable={},attribute_modifiers=[{id:"armor",type:"armor",amount:0,operation:"add_value"}]] 1

function under_pack:general_functions/general_character_select

experience set @s 16 levels

