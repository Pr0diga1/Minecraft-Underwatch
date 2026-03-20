## Give items
clear @s

## Main Weapon
item replace entity @s hotbar.0 with eye_armor_trim_smithing_template[consumable={consume_seconds:10000,animation:"bow"},custom_data={watcher:true},custom_name='{"bold":true,"color":"dark_green","italic":false,"text":"Watcher\'s Gaze"}'] 1

## Abilities
# Share Wounds
item replace entity @s hotbar.1 with rib_armor_trim_smithing_template[consumable={consume_seconds:1,animation:"block",sound:"ambient.underwater.loop",has_consume_particles:false},custom_data={sharewounds:true},custom_name='{"bold":true,"color":"dark_red","italic":false,"text":"Share Wounds"}',use_cooldown={seconds:5}] 1

# Spatial Warp
item replace entity @s hotbar.2 with spire_armor_trim_smithing_template[consumable={consume_seconds:2,animation:"spyglass",sound:"ambient.underwater.loop",has_consume_particles:false},custom_data={spacewarp:true},custom_name='[{"color":"#2100A3","text":"S"},{"color":"#2B00A3","text":"p"},{"color":"#3500A3","text":"a"},{"color":"#3E00A3","text":"t"},{"color":"#4800A3","text":"i"},{"color":"#5200A3","text":"a"},{"color":"#5C00A3","text":"l "},{"color":"#6600A3","text":"W"},{"color":"#7000A3","text":"a"},{"color":"#7900A3","text":"r"},{"color":"#8D00A3","text":"p"}]',use_cooldown={seconds:10}] 1

# Vulnerability
item replace entity @s hotbar.3 with vex_armor_trim_smithing_template[consumable={consume_seconds:10000,animation:"block"},custom_data={vulner:true},custom_name='{"bold":true,"color":"white","italic":false,"text":"Ritual of Vulnerability"}'] 1

## Armor
item replace entity @s armor.head with minecraft:player_head[minecraft:custom_name='{"text":"Lunatic Cultist","color":"gold","underlined":true,"bold":true,"italic":false}',minecraft:lore=['{"text":"ID головы: 62248","color":"gray","italic":false}','{"text":"mcheads.ru","color":"blue","italic":false}'],profile={id:[I;2080793942,-524468218,-1541115779,1949756395],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTQ3Y2M3NGY3NmUyZTA4ZmY5MDQ0ODZlNjQ3ZmU2OTk1MDgyYWQyMDY1NGFmZGMyMzMxMmMzMDljODliOTFlYyJ9fX0="}]}] 1
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":2}},attribute_modifiers=[{id:"armor",type:"armor",amount:6,operation:"add_value"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],dyed_color=4483814,trim={material:"minecraft:gold",pattern:"minecraft:wild",show_in_tooltip:false}] 1
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},dyed_color=4483814,trim={material:"minecraft:gold",pattern:"minecraft:dune",show_in_tooltip:false}] 1
item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},dyed_color=4483814,trim={material:"minecraft:gold",pattern:"minecraft:coast",show_in_tooltip:false}] 1


# Scoreboards
scoreboard players reset @s ability1
scoreboard players reset @s ability2
scoreboard players reset @s ability3
scoreboard players reset @s damageTaken
scoreboard players reset @s occultistHealingTimer

#set healing
scoreboard players set occultHeal constant 5