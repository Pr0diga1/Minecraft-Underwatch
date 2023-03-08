scoreboard players reset @s reset
execute at @s run summon armor_stand ^ ^ ^3 {Tags:["enginewalltrack"],Invisible:1b,Invulnerable:1b,Silent:1b}
execute as @e[tag=enginewalltrack] at @s run tp @s ~ ~ ~ facing entity @a[scores={class=3},limit=1,sort=nearest]
execute as @e[tag=enginewalltrack] at @s run summon falling_block ^ ^ ^1 {BlockState:{Name:"minecraft:spruce_planks"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute as @e[tag=enginewalltrack] at @s run summon falling_block ^1 ^ ^1 {BlockState:{Name:"minecraft:spruce_planks"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute as @e[tag=enginewalltrack] at @s run summon falling_block ^-1 ^ ^1 {BlockState:{Name:"minecraft:spruce_planks"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute as @e[tag=enginewalltrack] at @s run summon falling_block ^ ^1 ^1 {BlockState:{Name:"minecraft:spruce_planks"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute as @e[tag=enginewalltrack] at @s run summon falling_block ^1 ^1 ^1 {BlockState:{Name:"minecraft:spruce_planks"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute as @e[tag=enginewalltrack] at @s run summon falling_block ^-1 ^1 ^1 {BlockState:{Name:"minecraft:spruce_planks"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute as @e[tag=enginewalltrack] at @s run summon falling_block ^ ^2 ^1 {BlockState:{Name:"minecraft:spruce_planks"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute as @e[tag=enginewalltrack] at @s run summon falling_block ^1 ^2 ^1 {BlockState:{Name:"minecraft:spruce_planks"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
execute as @e[tag=enginewalltrack] at @s run summon falling_block ^-1 ^2 ^1 {BlockState:{Name:"minecraft:spruce_planks"},NoGravity:1b,Time:520,Tags:["enginewall"],DropItem:0b,HurtEntities:0b}
kill @e[tag=enginewalltrack]

scoreboard players set @s ability3 0
item replace entity @s hotbar.3 with barrier{CustomModelData:60,display:{Name:'{"text":"Wall on Cooldown"}'}} 1
