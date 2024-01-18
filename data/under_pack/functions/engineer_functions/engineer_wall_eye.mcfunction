#iterate the variable every tick the eye was held down
scoreboard players add @s engineerWallEye 1

# particles red
execute if score @s engineerWallEye matches 2 at @s run summon marker ~ ~ ~ {enginewall:1b}
execute if score @s engineerWallEye matches 2 at @s run summon falling_block ^-1 ^2 ^2 {BlockState:{Name:"minecraft:iron_block"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @s if score @s engineerWallEye matches 2 at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 5
execute if score @s engineerWallEye matches 8 at @s run summon falling_block ^ ^2 ^2 {BlockState:{Name:"minecraft:iron_block"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @s if score @s engineerWallEye matches 8 at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 5
execute if score @s engineerWallEye matches 16 at @s run summon falling_block ^1 ^2 ^2 {BlockState:{Name:"minecraft:iron_block"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @s if score @s engineerWallEye matches 16 at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 5
execute if score @s engineerWallEye matches 24 at @s run summon falling_block ^-1 ^1 ^2 {BlockState:{Name:"minecraft:iron_block"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @s if score @s engineerWallEye matches 24 at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 5
execute if score @s engineerWallEye matches 32 at @s run summon falling_block ^ ^1 ^2 {BlockState:{Name:"minecraft:iron_block"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @s if score @s engineerWallEye matches 32 at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 5
execute if score @s engineerWallEye matches 40 at @s run summon falling_block ^1 ^1 ^2 {BlockState:{Name:"minecraft:iron_block"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @s if score @s engineerWallEye matches 40 at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 5
execute if score @s engineerWallEye matches 48 at @s run summon falling_block ^-1 ^ ^2 {BlockState:{Name:"minecraft:iron_block"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @s if score @s engineerWallEye matches 48 at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 5
execute if score @s engineerWallEye matches 56 at @s run summon falling_block ^0 ^ ^2 {BlockState:{Name:"minecraft:iron_block"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @s if score @s engineerWallEye matches 56 at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 5
execute if score @s engineerWallEye matches 64 at @s run summon falling_block ^1 ^ ^2 {BlockState:{Name:"minecraft:iron_block"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @s if score @s engineerWallEye matches 64 at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 5


#cancel if waited for too long
execute if score @s engineerWallEye matches 110.. run scoreboard players set @s engineerWallEye 1