# Keeps spare potions out of the inventory
clear @s[tag=reload_main] splash_potion{acid:1b}
clear @s[tag=reload_util] splash_potion{healing:1b}
clear @s[tag=telepot_cooldown] splash_potion{telepot:1b}

# Gives perma speed
effect give @s speed 5 0 true

## Telepot stuff
# Assigns stuff
execute as @e[type=potion,nbt={Item:{tag:{telepot:1b}}}] run tag @s add telepot
execute if entity @s[team=uBlue] run tag @e[type=potion,tag=telepot,tag=!uRed,tag=!uBlue,limit=1,distance=..2.5,sort=nearest] add uBlue
execute if entity @s[team=uRed] run tag @e[type=potion,tag=telepot,tag=!uRed,tag=!uBlue,limit=1,distance=..2.5,sort=nearest] add uRed
# Tags telepot user
execute as @e[type=potion,tag=telepot,tag=uBlue] at @s run tag @a[sort=nearest,limit=1,team=uBlue] add telepot
execute as @e[type=potion,tag=telepot,tag=uRed] at @s run tag @a[sort=nearest,limit=1,team=uRed] add telepot
# Runs tick
execute if entity @s[team=uBlue,tag=telepot] run function under_pack:alchemist_functions/alchemist_telepot_tick_blue
execute if entity @s[team=uRed,tag=telepot] run function under_pack:alchemist_functions/alchemist_telepot_tick_red

## Healing pot stuff
# Assigns stuff
execute as @e[type=potion,nbt={Item:{tag:{healing:1b}}}] run tag @s add healing
execute if entity @s[team=uBlue] run tag @e[type=potion,tag=healing,tag=!uRed,tag=!uBlue,limit=1,distance=..2.5,sort=nearest] add uBlue
execute if entity @s[team=uRed] run tag @e[type=potion,tag=healing,tag=!uRed,tag=!uBlue,limit=1,distance=..2.5,sort=nearest] add uRed
# Tags healing user user
execute as @e[type=potion,tag=healing,tag=uBlue] at @s run tag @a[sort=nearest,limit=1,team=uBlue] add healing
execute as @e[type=potion,tag=healing,tag=uRed] at @s run tag @a[sort=nearest,limit=1,team=uRed] add healing
# Runs tick
execute if entity @e[type=potion,tag=healing,tag=uBlue] run function under_pack:alchemist_functions/alchemist_healing_tick_blue
execute if entity @e[type=potion,tag=healing,tag=uRed] run function under_pack:alchemist_functions/alchemist_healing_tick_red
# Checks for landing
execute if entity @s[tag=healing] unless entity @e[type=potion,tag=healing] run function under_pack:alchemist_functions/alchemist_heal
# Runs the healer's tick
execute as @e[tag=healing,type=marker] at @s run function under_pack:alchemist_functions/healer_tick

## Cooldowns
# Cooldown checks
execute unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:splash_potion"}]}] if entity @s[tag=!reload_main] run function under_pack:alchemist_functions/alchemist_reload_main
execute unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:splash_potion"}]}] if entity @s[tag=!reload_utility] run function under_pack:alchemist_functions/alchemist_reload_utility
execute unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:splash_potion"}]}] if entity @s[tag=!telepot_cooldown] run function under_pack:alchemist_functions/alchemist_telepot_cooldown

# Reload main's cooldown
execute if entity @s[tag=reload_main] run scoreboard players add @s ability1 1
item modify entity @s[tag=reload_main] hotbar.0 under_pack:alchemist/main_cooldown
execute if score @s ability1 matches 41.. unless entity @s[tag=!reload_main] run item replace entity @s hotbar.0 with air
execute if score @s ability1 matches 41.. unless entity @s[tag=!reload_main] run item replace entity @s hotbar.0 with splash_potion{display:{Name:'{"text":"Acid","color":"#8FC219","bold":true,"italic":false}'},CustomModelData:2,acid:1b,Enchantments:[{}],Potion:"minecraft:harming",CustomPotionColor:16777215} 1
execute if score @s ability1 matches 41.. unless entity @s[tag=!reload_main] run tag @s remove reload_main
# Reload heal's cooldown
execute if entity @s[tag=reload_utility] run scoreboard players add @s ability2 1
item modify entity @s[tag=reload_utility] hotbar.1 under_pack:alchemist/util_cooldown
execute if score @s ability2 matches 121.. unless entity @s[tag=!reload_utility] run item replace entity @s hotbar.1 with air
execute if score @s ability2 matches 121.. unless entity @s[tag=!reload_utility] run item replace entity @s hotbar.1 with splash_potion{display:{Name:'{"text":"Healing Solution","color":"#BF5DC2","bold":true,"italic":false}'},CustomModelData:3,healing:1b,CustomPotionColor:16777215} 1
execute if score @s ability2 matches 121.. unless entity @s[tag=!reload_utility] run tag @s remove reload_utility
# Telepot's cooldown
execute if entity @s[tag=telepot_cooldown] run scoreboard players add @s movement 1
item modify entity @s[tag=telepot_cooldown] hotbar.2 under_pack:alchemist/telepot_cooldown
execute if score @s movement matches 101.. unless entity @s[tag=!telepot_cooldown] run item replace entity @s hotbar.2 with splash_potion{display:{Name:'{"text":"Telepot","color":"#8753E0","bold":true,"italic":false}'},CustomModelData:1,telepot:1b,CustomPotionColor:16777215} 1
execute if score @s movement matches 101.. unless entity @s[tag=!telepot_cooldown] run tag @s remove telepot_cooldown

## Ult commands
# Ult tracking
execute if score @s alchemistUltActive matches 0 run function under_pack:alchemist_functions/alchemist_ult_track
# Ult assigns stuff
execute as @e[type=potion,nbt={Item:{tag:{alchUlt:1b}}}] run tag @s add mustard_gas
execute if entity @s[team=uBlue] run tag @e[type=potion,tag=mustard_gas,tag=!uRed,tag=!uBlue,limit=1,distance=..2.5,sort=nearest] add uBlue
execute if entity @s[team=uRed] run tag @e[type=potion,tag=mustard_gas,tag=!uRed,tag=!uBlue,limit=1,distance=..2.5,sort=nearest] add uRed
# Ult find player
execute as @e[type=potion,tag=mustard_gas,tag=uBlue] at @s run tag @a[sort=nearest,limit=1,team=uBlue] add mustard_gas
execute as @e[type=potion,tag=mustard_gas,tag=uRed] at @s run tag @a[sort=nearest,limit=1,team=uRed] add mustard_gas
# Runs ult tick
execute if entity @e[type=potion,tag=mustard_gas,tag=uBlue] run function under_pack:alchemist_functions/alchemist_ult_tick_blue
execute if entity @e[type=potion,tag=mustard_gas,tag=uRed] run function under_pack:alchemist_functions/alchemist_ult_tick_red
# Checks for ult landing
execute if entity @s[tag=mustard_gas] unless entity @e[type=potion,tag=mustard_gas] run function under_pack:alchemist_functions/alchemist_ult
# Ult potion tick
execute as @e[tag=mustard_gas,type=marker] at @s run function under_pack:alchemist_functions/ult_tick

# Reset reset
scoreboard players set @s reset 0
# Add to tick tracker
scoreboard players add @s ultTicks 1
