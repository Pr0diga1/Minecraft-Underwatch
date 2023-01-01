# Tags telepots and assigns a team (so multiple telepots can be around at once)
execute as @e[type=potion,nbt={Item:{tag:{telepot:1b}}}] run tag @s add telepot
execute as @e[type=potion,tag=telepot,tag=!uRed,tag=!uBlue] at @s if entity @a[sort=nearest,team=uBlue,limit=1,distance=..2.5] run tag @s add uBlue
execute as @e[type=potion,tag=telepot,tag=!uRed,tag=!uBlue] at @s if entity @a[sort=nearest,team=uRed,limit=1,distance=..2.5] run tag @s add uRed

execute as @e[type=potion,tag=telepot,tag=uBlue] at @s run tag @a[sort=nearest,limit=1,team=uBlue] add telepot
execute as @e[type=potion,tag=telepot,tag=uRed] at @s run tag @a[sort=nearest,limit=1,team=uRed] add telepot

# Store's position of telepot
execute if entity @s[team=uBlue,tag=telepot] if entity @e[type=potion,tag=telepot,tag=uBlue] store result score xposBlue buffer run data get entity @e[type=potion,tag=telepot,tag=uBlue,limit=1] Pos[0] 100
execute if entity @s[team=uBlue,tag=telepot] if entity @e[type=potion,tag=telepot,tag=uBlue] store result score yposBlue buffer run data get entity @e[type=potion,tag=telepot,tag=uBlue,limit=1] Pos[1] 100
execute if entity @s[team=uBlue,tag=telepot] if entity @e[type=potion,tag=telepot,tag=uBlue] store result score zposBlue buffer run data get entity @e[type=potion,tag=telepot,tag=uBlue,limit=1] Pos[2] 100

execute if entity @s[team=uRed,tag=telepot] if entity @e[type=potion,tag=telepot,tag=uRed] store result score xposRed buffer run data get entity @e[type=potion,tag=telepot,tag=uRed,limit=1] Pos[0] 100
execute if entity @s[team=uRed,tag=telepot] if entity @e[type=potion,tag=telepot,tag=uRed] store result score yposRed buffer run data get entity @e[type=potion,tag=telepot,tag=uRed,limit=1] Pos[1] 100
execute if entity @s[team=uRed,tag=telepot] if entity @e[type=potion,tag=telepot,tag=uRed] store result score zposRed buffer run data get entity @e[type=potion,tag=telepot,tag=uRed,limit=1] Pos[2] 100

# Teleports based on team when pot smashes
execute if entity @s[team=uBlue,tag=telepot] unless entity @e[type=potion,tag=telepot,tag=uBlue] run function under_pack:alchemist_functions/alchemist_telepot
execute if entity @s[team=uRed,tag=telepot] unless entity @e[type=potion,tag=telepot,tag=uRed] run function under_pack:alchemist_functions/alchemist_telepot

# Death check
execute if entity @s[scores={uDeaths=1..}] run function under_pack:alchemist_functions/alchemist_respawn

# Cooldown checks
execute unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:splash_potion"}]}] if entity @s[tag=!reload_main] run function under_pack:alchemist_functions/alchemist_reload_main
execute unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:splash_potion"}]}] if entity @s[tag=!reload_utility] run function under_pack:alchemist_functions/alchemist_reload_utility
execute unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:splash_potion"}]}] if entity @s[tag=!telepot_cooldown] run function under_pack:alchemist_functions/alchemist_telepot_cooldown

# Reload main's cooldown
execute if entity @s[tag=reload_main] run scoreboard players add @s ability1 1
item modify entity @s[tag=reload_main] hotbar.0 under_pack:alchemist/main_cooldown
execute if score @s ability1 matches 61.. unless entity @s[tag=!reload_main] run item replace entity @s hotbar.0 with air
execute if score @s ability1 matches 61.. unless entity @s[tag=!reload_main] run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:splash_potion",Count:3b,tag:{display:{Name:'{"text":"Acid","color":"#8FC219","bold":true,"italic":false}'},acid:1b,Potion:"minecraft:harming",CustomPotionColor:9421337}}}
execute if score @s ability1 matches 61.. unless entity @s[tag=!reload_main] run tag @s remove reload_main

# Reload heal's cooldown
execute if entity @s[tag=reload_utility] run scoreboard players add @s ability2 1
item modify entity @s[tag=reload_utility] hotbar.1 under_pack:alchemist/util_cooldown
execute if score @s ability2 matches 61.. unless entity @s[tag=!reload_utility] run item replace entity @s hotbar.1 with air
execute if score @s ability2 matches 61.. unless entity @s[tag=!reload_utility] run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:splash_potion",Count:3b,tag:{display:{Name:'{"text":"Healing","color":"#C265BC","bold":true,"italic":false}'},healing:1b,Potion:"minecraft:strong_regeneration",CustomPotionColor:12740028}}}
execute if score @s ability2 matches 61.. unless entity @s[tag=!reload_utility] run tag @s remove reload_utility

# Telepot's cooldown
execute if entity @s[tag=telepot_cooldown] run scoreboard players add @s movement 1
item modify entity @s[tag=telepot_cooldown] hotbar.2 under_pack:alchemist/telepot_cooldown
execute if score @s movement matches 141.. unless entity @s[tag=!telepot_cooldown] run item replace entity @s hotbar.2 with splash_potion{display:{Name:'{"text":"Telepot","color":"#8753E0","bold":true,"italic":false}'},CustomModelData:1,telepot:1b,CustomPotionColor:16777215} 1
execute if score @s movement matches 141.. unless entity @s[tag=!telepot_cooldown] run tag @s remove telepot_cooldown


## Ult commands

# Ult tracking
execute if score @s alchemistUltActive matches 0 run function under_pack:alchemist_functions/alchemist_ult_track

# Ending ult
execute unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:potion",tag:{alchemistUlt:1b}}]}] if entity @s[tag=ulting] run function under_pack:alchemist_functions/ult_end