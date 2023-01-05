#blocks

#player level
summon falling_block ~3 ~ ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~3 ~ ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~3 ~ ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~2 ~ ~2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~1 ~ ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~ ~ ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-1 ~ ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-2 ~ ~2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-3 ~ ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-3 ~ ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-3 ~ ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-2 ~ ~-2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-1 ~ ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~ ~ ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~1 ~ ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~2 ~ ~-2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}

#below player
execute at @s if block ~3 ~-0.01 ~-1 #under_pack:non_solid run summon falling_block ~3 ~-1 ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~3 ~-0.01 ~ #under_pack:non_solid run summon falling_block ~3 ~-1 ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~3 ~-0.01 ~1 #under_pack:non_solid run summon falling_block ~3 ~-1 ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~2 ~-0.01 ~2 #under_pack:non_solid run summon falling_block ~2 ~-1 ~2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~1 ~-0.01 ~3 #under_pack:non_solid run summon falling_block ~1 ~-1 ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~ ~-0.01 ~3 #under_pack:non_solid run summon falling_block ~ ~-1 ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~-1 ~-0.01 ~3 #under_pack:non_solid run summon falling_block ~-1 ~-1 ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~-2 ~-0.01 ~2 #under_pack:non_solid run summon falling_block ~-2 ~-1 ~2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~-3 ~-0.01 ~1 #under_pack:non_solid run summon falling_block ~-3 ~-1 ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~-3 ~-0.01 ~ #under_pack:non_solid run summon falling_block ~-3 ~-1 ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~-3 ~-0.01 ~-1 #under_pack:non_solid run summon falling_block ~-3 ~-1 ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~-2 ~-0.01 ~-2 #under_pack:non_solid run summon falling_block ~-2 ~-1 ~-2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~-1 ~-0.01 ~-3 #under_pack:non_solid run summon falling_block ~-1 ~-1 ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~ ~-0.01 ~-3 #under_pack:non_solid run summon falling_block ~ ~-1 ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~1 ~-0.01 ~-3 #under_pack:non_solid run summon falling_block ~1 ~-1 ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
execute at @s if block ~2 ~-0.01 ~-2 #under_pack:non_solid run summon falling_block ~2 ~-1 ~-2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}

#1 above player
summon falling_block ~3 ~1 ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~3 ~1 ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~3 ~1 ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~2 ~1 ~2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~1 ~1 ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~ ~1 ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-1 ~1 ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-2 ~1 ~2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-3 ~1 ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-3 ~1 ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-3 ~1 ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-2 ~1 ~-2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-1 ~1 ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~ ~1 ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~1 ~1 ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~2 ~1 ~-2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}

#2 above player
summon falling_block ~3 ~2 ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~3 ~2 ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~3 ~2 ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~2 ~2 ~2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~1 ~2 ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~ ~2 ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-1 ~2 ~3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-2 ~2 ~2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-3 ~2 ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-3 ~2 ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-3 ~2 ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-2 ~2 ~-2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-1 ~2 ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~ ~2 ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~1 ~2 ~-3 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~2 ~2 ~-2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}

#3 above player
summon falling_block ~2 ~3 ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~2 ~3 ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~2 ~3 ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~1 ~3 ~2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~ ~3 ~2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-1 ~3 ~2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-2 ~3 ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-2 ~3 ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-2 ~3 ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-1 ~3 ~-2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~ ~3 ~-2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~1 ~3 ~-2 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}

#4 above player
summon falling_block ~1 ~4 ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~1 ~4 ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~1 ~4 ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-1 ~4 ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-1 ~4 ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~-1 ~4 ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~ ~4 ~1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~ ~4 ~-1 {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}
summon falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:light_blue_stained_glass"},NoGravity:1b,Silent:1b,Time:500,DropItem:0b,HurtEntities:0b}


#reset
scoreboard players reset @s reset
scoreboard players set @s ability1 0

item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:25,display:{Name:'{"text":"Bubble Wand","color":"blue"}'},paladinBubble:1b} 1