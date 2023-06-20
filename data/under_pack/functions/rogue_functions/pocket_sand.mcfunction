# Cooldown init
item replace entity @s hotbar.3 with barrier{CustomModelData:9}
scoreboard players set @s ability2 201

# Resets reset
scoreboard players reset @s reset

# Find players to blind
execute if entity @s[team=uBlue] run summon marker ^ ^1 ^1.5 {Tags:["uBlue","pocket_sand"]}
execute if entity @s[team=uRed] run summon marker ^ ^1 ^1.5 {Tags:["uRed","pocket_sand"]}

# Blind em
execute if entity @s[team=uBlue] positioned as @e[type=marker,tag=pocket_sand,tag=uBlue] run function under_pack:rogue_functions/hit_sand_blue
execute if entity @s[team=uRed] positioned as @e[type=marker,tag=pocket_sand,tag=uRed] run function under_pack:rogue_functions/hit_sand_red

# Kill marker
execute if entity @s[team=uBlue] run kill @e[type=marker,tag=pocket_sand,tag=uBlue]
execute if entity @s[team=uRed] run kill @e[type=marker,tag=pocket_sand,tag=uRed]

# Particles and sound
playsound minecraft:block.sand.step master @s ~ ~ ~ 1 0.7
particle dust 0.922 0.922 0.553 2 ^ ^1 ^0.5 0.2 0.2 0.2 1 15 normal
particle dust 0.922 0.922 0.553 2 ^ ^1 ^1 0.5 0.5 0.5 1 25 normal
particle dust 0.922 0.922 0.553 2 ^ ^1 ^1.5 0.7 0.7 0.7 1 30 normal