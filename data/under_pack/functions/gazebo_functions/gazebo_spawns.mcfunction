scoreboard players operation islandUUIDRNG buffer = islandUUIDRNG UUIDRNG
execute store result score islandUUIDRNG UUIDRNG run data get entity @e[limit=1, sort=random,type=armor_stand,tag=islandrng] UUID[0]
execute if score islandUUIDRNG UUIDRNG matches 0 run tp @s -1763 144 0
execute if score islandUUIDRNG UUIDRNG matches 1 run tp @s -1762 144 21
execute if score islandUUIDRNG UUIDRNG matches 2 run tp @s -1763 144 42
execute if score islandUUIDRNG UUIDRNG matches 3 run tp @s -1784 144 43
execute if score islandUUIDRNG UUIDRNG matches 4 run tp @s -1805 144 42
execute if score islandUUIDRNG UUIDRNG matches 5 run tp @s -1806 144 21
execute if score islandUUIDRNG UUIDRNG matches 6 run tp @s -1805 144 0
execute if score islandUUIDRNG UUIDRNG matches 7 run tp @s -1784 144 -1
execute if score islandUUIDRNG buffer = islandUUIDRNG UUIDRNG run function oneshot_pack:island_functions/island_spawns