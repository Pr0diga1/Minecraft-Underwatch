clear @s

#elements
# fire
item replace entity @s hotbar.0 with blaze_powder[custom_name={"color":"gold","text":"Fire"},custom_data={elementalFire:true},consumable={consume_seconds:999999999,animation:"spear"}] 1

# wind
item replace entity @s hotbar.1 with breeze_rod[custom_name={"color":"white","text":"Wind"},custom_data={elementalWind:true},consumable={consume_seconds:999999999,animation:"spear",sound:"entity.breeze.whirl"}] 1

# water
item replace entity @s hotbar.2 with heart_of_the_sea[custom_name={"color":"dark_aqua","text":"Water"},custom_data={elementalWater:true},consumable={consume_seconds:999999999,animation:"block"}] 1

# earth
item replace entity @s hotbar.3 with pitcher_pod[custom_name={"color":"gray","text":"Earth"},custom_data={elementalEarth:true},consumable={consume_seconds:999999999,animation:"trident"}] 1

#armor
item replace entity @s armor.feet with iron_boots[attribute_modifiers=[{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={},enchantments={"blast_protection":8,"depth_strider":2}] 1
item replace entity @s armor.legs with diamond_leggings[unbreakable={}]
item replace entity @s armor.head with chainmail_helmet[unbreakable={}]

#variables
scoreboard players set @s elementalBar 741
scoreboard players set @s elementalBarBuffer 741
scoreboard players set @s elementalWaterState 0
execute as @s[team=uRed] run scoreboard players set @a[team=uBlue] elementalFireHit 0
execute as @s[team=uBlue] run scoreboard players set @a[team=uRed] elementalFireHit 0
execute as @s[team=uRed] run scoreboard players set @a[team=uRed] elementalWaterHit 0
execute as @s[team=uBlue] run scoreboard players set @a[team=uBlue] elementalWaterHit 0
execute as @s[team=uRed] run scoreboard players set @a[team=uRed] elementalEarthTimer 0
execute as @s[team=uBlue] run scoreboard players set @a[team=uBlue] elementalEarthTimer 0

#constants
scoreboard players set ElementalWaterTiming constant 7
scoreboard players set ElementalFireTiming constant 7

#clean spare arrows
kill @e[type=arrow,tag=ElementalFireArrow]
kill @e[type=arrow,tag=elementalEarthArrow]

scoreboard players set @s elementalBarTimer 0

#clean markers
execute as @s[team=uRed] run kill @e[type=marker,tag=redElementalWater]
execute as @s[team=uBlue] run kill @e[type=marker,tag=blueElementalWater]
kill @e[type=marker,tag=elementalStun]
execute as @s[team=uRed] run kill @e[type=block_display,tag=redElementalEarth]
execute as @s[team=uBlue] run kill @e[type=block_display,tag=blueElementalEarth]

#run the class select
function under_pack:general_functions/general_character_select
tag @s remove elementalsetstate

#xp
experience set @s 100 levels
experience set @s 741 points