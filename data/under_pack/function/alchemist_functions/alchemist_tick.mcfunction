execute as @s[tag=uDead] run return fail

# Keeps spare potions out of the inventory
clear @s[tag=reload_util] splash_potion[custom_data={healing:1b}]
clear @s[tag=telepot_cooldown] splash_potion[custom_data={telepot:1b}]

# Gives perma speed and weakness
effect give @s weakness 5 10 true

# Find potions
execute as @e[type=area_effect_cloud] at @s run function under_pack:alchemist_functions/effect_cloud_tick

# Marker ticks
execute as @e[type=marker,tag=healing] at @s run function under_pack:alchemist_functions/healer_tick
execute as @e[type=marker,tag=molitov] at @s run function under_pack:alchemist_functions/molotov_tick


## Cooldowns
# Cooldown checks
execute unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:lingering_potion",count:2}]}] if entity @s[tag=!reload_main] run function under_pack:alchemist_functions/reload_main
execute unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:lingering_potion"}]}] if entity @s[tag=!reload_utility] run function under_pack:alchemist_functions/reload_utility
execute unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:lingering_potion"}]}] if entity @s[tag=!telepot_cooldown] run function under_pack:alchemist_functions/telepot_cooldown
execute unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:lingering_potion"}]}] if entity @s[tag=!molotov_cooldown] run function under_pack:alchemist_functions/molotov_cooldown
# Reload mains cooldown
execute if entity @s[tag=reload_main] run function under_pack:alchemist_functions/acid_cooldown_tick
execute if score @s ability1 matches ..0 unless entity @s[tag=!reload_main] run function under_pack:alchemist_functions/acid_cooldown
# Reload heals cooldown
execute if entity @s[tag=reload_utility] run function under_pack:alchemist_functions/heal_cooldown_tick
execute if score @s ability2 matches ..0 unless entity @s[tag=!reload_utility] run function under_pack:alchemist_functions/heal_cooldown_end
# Telepots cooldown
execute if entity @s[tag=telepot_cooldown] run function under_pack:alchemist_functions/telepot_cooldown_tick
execute if score @s movement matches ..0 unless entity @s[tag=!telepot_cooldown] run function under_pack:alchemist_functions/telepot_cooldown_end
# Molotovs cooldown
execute if entity @s[tag=molotov_cooldown] run function under_pack:alchemist_functions/molotov_cooldown_tick
execute if score @s ability5 matches ..0 unless entity @s[tag=!molotov_cooldown] run function under_pack:alchemist_functions/molotov_cooldown_end

execute store result score @s ability8 run experience query @s levels
execute if score @s ability8 matches 101.. run experience set @s 100 levels
execute if score @s ability8 matches 101.. run experience set @s 741 points