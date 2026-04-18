#iterate the variable every tick the eye was held down
scoreboard players add @s engineerWallEye 2
scoreboard players set @s engineerWallBuffer 2
#summon tracker markers
execute if score @s[team=uBlue] engineerWallEye matches 2 at @s run summon marker ^ ^ ^2 {Tags:["enginewall","blue"]}
execute if score @s[team=uRed] engineerWallEye matches 2 at @s run summon marker ^ ^ ^2 {Tags:["enginewall","red"]}
execute if score @s[team=uBlue] engineerWallEye matches 2 at @s run data modify entity @e[tag=enginewall,limit=1,sort=nearest,tag=blue] Rotation set from entity @s Rotation
execute if score @s[team=uRed] engineerWallEye matches 2 at @s run data modify entity @e[tag=enginewall,limit=1,sort=nearest,tag=red] Rotation set from entity @s Rotation

#wall blue
execute if score @s[team=uBlue] engineerWallEye matches 2 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run summon falling_block ^-1 ^2 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] if score @s[team=uBlue] engineerWallEye matches 2 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uBlue] engineerWallEye matches 8 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run summon falling_block ^ ^2 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] if score @s[team=uBlue] engineerWallEye matches 8 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uBlue] engineerWallEye matches 14 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run summon falling_block ^1 ^2 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] if score @s[team=uBlue] engineerWallEye matches 14 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uBlue] engineerWallEye matches 20 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run summon falling_block ^-1 ^1 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] if score @s[team=uBlue] engineerWallEye matches 20 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uBlue] engineerWallEye matches 26 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run summon falling_block ^ ^1 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] if score @s[team=uBlue] engineerWallEye matches 26 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uBlue] engineerWallEye matches 32 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run summon falling_block ^1 ^1 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] if score @s[team=uBlue] engineerWallEye matches 32 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uBlue] engineerWallEye matches 38 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run summon falling_block ^-1 ^ ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] if score @s[team=uBlue] engineerWallEye matches 38 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uBlue] engineerWallEye matches 44 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run summon falling_block ^0 ^ ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] if score @s[team=uBlue] engineerWallEye matches 44 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uBlue] engineerWallEye matches 50 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run summon falling_block ^1 ^ ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] if score @s[team=uBlue] engineerWallEye matches 50 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=blue] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uBlue] engineerWallEye matches 50 run kill @e[type=marker,tag=enginewall,tag=blue]

#wall red
execute if score @s[team=uRed] engineerWallEye matches 2 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run summon falling_block ^-1 ^2 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] if score @s[team=uRed] engineerWallEye matches 2 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uRed] engineerWallEye matches 8 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run summon falling_block ^ ^2 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] if score @s[team=uRed] engineerWallEye matches 8 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uRed] engineerWallEye matches 14 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run summon falling_block ^1 ^2 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] if score @s[team=uRed] engineerWallEye matches 14 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uRed] engineerWallEye matches 20 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run summon falling_block ^-1 ^1 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] if score @s[team=uRed] engineerWallEye matches 20 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uRed] engineerWallEye matches 26 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run summon falling_block ^ ^1 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] if score @s[team=uRed] engineerWallEye matches 26 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uRed] engineerWallEye matches 32 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run summon falling_block ^1 ^1 ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] if score @s[team=uRed] engineerWallEye matches 32 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uRed] engineerWallEye matches 38 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run summon falling_block ^-1 ^ ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] if score @s[team=uRed] engineerWallEye matches 38 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uRed] engineerWallEye matches 44 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run summon falling_block ^0 ^ ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] if score @s[team=uRed] engineerWallEye matches 44 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uRed] engineerWallEye matches 50 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run summon falling_block ^1 ^ ^ {BlockState:{Name:"minecraft:bricks"},NoGravity:1b,Time:450,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] if score @s[team=uRed] engineerWallEye matches 50 at @e[tag=enginewall,type=marker,limit=1,sort=nearest,tag=red] run playsound minecraft:block.anvil.land master @a ~ ~ ~ .1
execute if score @s[team=uRed] engineerWallEye matches 50 run kill @e[type=marker,tag=enginewall,tag=red]


#cancel if waited for too long
execute if score @s engineerWallEye matches 50.. run scoreboard players set @s ability1 121
execute if score @s engineerWallEye matches 50.. run scoreboard players reset @s engineerWallEye

advancement revoke @s only under_pack:engineer/wall