## Summons armor stand to find death location
# Assigns team to avoid conflicts
execute if entity @s[team=uBlue] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["alch_death","uBlue"]}
execute if entity @s[team=uRed] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["alch_death","uRed"]}
# Moves to death location
# Blue
execute if entity @s[team=uBlue] store result entity @e[tag=alch_death,limit=1,tag=uBlue] Pos[0] int 1 run data get entity @s LastDeathLocation.pos[0]
execute if entity @s[team=uBlue] store result entity @e[tag=alch_death,limit=1,tag=uBlue] Pos[1] int 1 run data get entity @s LastDeathLocation.pos[1]
execute if entity @s[team=uBlue] store result entity @e[tag=alch_death,limit=1,tag=uBlue] Pos[2] int 1 run data get entity @s LastDeathLocation.pos[2]
# Red
execute if entity @s[team=uRed] store result entity @e[tag=alch_death,limit=1,tag=uRed] Pos[0] int 1 run data get entity @s LastDeathLocation.pos[0]
execute if entity @s[team=uRed] store result entity @e[tag=alch_death,limit=1,tag=uRed] Pos[1] int 1 run data get entity @s LastDeathLocation.pos[1]
execute if entity @s[team=uRed] store result entity @e[tag=alch_death,limit=1,tag=uRed] Pos[2] int 1 run data get entity @s LastDeathLocation.pos[2]
# Summons a lingering poison pot at the death location
execute if entity @s[team=uBlue] at @e[tag=alch_death,team=uBlue] run summon potion ~ ~ ~ {Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:strong_poison",deathpot:1b}}}
execute if entity @s[team=uRed] at @e[tag=alch_death,team=uRed] run summon potion ~ ~ ~ {Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:strong_poison",deathpot:1b}}}
# Kill armor stand
execute if entity @s[team=uBlue] run kill @e[tag=alch_death,tag=uBlue]
execute if entity @s[team=uRed] run kill @e[tag=alch_death,tag=uBlue]

## Player reset
clear @s
# Main weapon
summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:3b,tag:{display:{Name:'{"text":"Acid","color":"#8FC219","bold":true,"italic":false}'},acid:1b,Potion:"minecraft:harming",CustomPotionColor:9421337}}}
summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:3b,tag:{display:{Name:'{"text":"Healing","color":"#C265BC","bold":true,"italic":false}'},healing:1b,Potion:"minecraft:strong_regeneration",CustomPotionColor:12740028}}}
# Telepot
item replace entity @s hotbar.2 with splash_potion{display:{Name:'{"text":"Telepot","color":"#8753E0","bold":true,"italic":false}'},CustomModelData:1,telepot:1b,CustomPotionColor:16777215} 1
# Ult placeholder
item replace entity @s hotbar.8 with barrier 1
# Armor
item replace entity @s armor.feet with leather_boots{Unbreakable:true,Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:true}
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable:true}

# Reset death scoreboard
scoreboard players reset @a uDeaths