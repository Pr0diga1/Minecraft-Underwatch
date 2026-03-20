# Keeps spare potions out of the inventory
clear @s[tag=reload_util] splash_potion[custom_data={healing:1b}]
clear @s[tag=telepot_cooldown] splash_potion[custom_data={telepot:1b}]

# Gives perma speed and weakness
effect give @s speed 5 0 true
effect give @s weakness 5 10 true

# Find potions
execute as @e[type=area_effect_cloud] at @s run function under_pack:alchemist_functions/effect_cloud_tick

# Healer marker tick
execute as @e[tag=healing,type=marker] at @s run function under_pack:alchemist_functions/healer_tick
execute as @e[tag=molitov,type=marker] at @s run function under_pack:alchemist_functions/molotov_tick


## Cooldowns
# Cooldown checks
execute unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:lingering_potion",count:2}]}] if entity @s[tag=!reload_main] run function under_pack:alchemist_functions/alchemist_reload_main
execute unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:lingering_potion"}]}] if entity @s[tag=!reload_utility] run function under_pack:alchemist_functions/alchemist_reload_utility
execute unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:lingering_potion"}]}] if entity @s[tag=!telepot_cooldown] run function under_pack:alchemist_functions/alchemist_telepot_cooldown
execute unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:lingering_potion"}]}] if entity @s[tag=!molotov_cooldown] run function under_pack:alchemist_functions/molotov_cooldown
# Reload main's cooldown
execute if entity @s[tag=reload_main] run scoreboard players remove @s ability1 1
execute if score @s ability1 matches ..1 unless entity @s[tag=!reload_main] run function under_pack:alchemist_functions/acid_cooldown
# Reload heal's cooldown
execute if entity @s[tag=reload_utility] run function under_pack:alchemist_functions/heal_cooldown_tick
execute if score @s ability2 matches 101.. unless entity @s[tag=!reload_utility] run function under_pack:alchemist_functions/heal_cooldown_end
# Telepot's cooldown
execute if entity @s[tag=telepot_cooldown] run function under_pack:alchemist_functions/telepot_cooldown_tick
execute if score @s movement matches 101.. unless entity @s[tag=!telepot_cooldown] run function under_pack:alchemist_functions/telepot_cooldown_end
# Molotov's cooldown
execute if entity @s[tag=molotov_cooldown] run scoreboard players add @s ability5 1
execute if score @s ability5 matches 101.. unless entity @s[tag=!molotov_cooldown] run function under_pack:alchemist_functions/molotov_cooldown_end
