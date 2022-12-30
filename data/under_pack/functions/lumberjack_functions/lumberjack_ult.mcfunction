#declares the raycast completed
scoreboard players set @s ray_success 1
#clears the ult
item replace entity @s hotbar.8 with air
#adds one to the active timer of the ability every tick because the tick runs this every tick
execute unless score @s lumberjack_axe_slam matches 41 run scoreboard players add @s lumberjack_axe_slam 1
#resets the ult charge
execute if score @s lumberjack_axe_slam matches 1 run scoreboard players set @s lumberjack_ult_charge 0
execute if score @s lumberjack_axe_slam matches 1 run scoreboard players set @s lumberjack_ult_timer 0
execute if score @s lumberjack_axe_slam matches 1 run experience set @s 0 levels
#summons an armor_stand on the player for where the ult will occur (subject to be changed to ray cast)
execute if entity @s[team=uRed] if score @s lumberjack_axe_slam matches 1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["lumber_ult","red"],NoGravity:1b}
execute if entity @s[team=uBlue] if score @s lumberjack_axe_slam matches 1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["lumber_ult","blue"],NoGravity:1b}
#summons an Invisible giant holding an axe in the sky
execute if entity @s[team=uRed] if score @s lumberjack_axe_slam matches 1 at @e[tag=lumber_ult,limit=1,tag=red] run summon giant ~-2.2 ~22 ~-5 {Silent:1b,Invulnerable:1b,NoAI:1b,CustomName:'{"text":"Dinnerbone"}',HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{}]}},{}],HandDropChances:[0.000F,0.085F],Tags:["lumber_giant","red"],NoGravity:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:9999,ShowParticles:1b}]}
execute if entity @s[team=uBlue] if score @s lumberjack_axe_slam matches 1 at @e[tag=lumber_ult,limit=1,tag=blue] run summon giant ~-2.2 ~22 ~-5 {Silent:1b,Invulnerable:1b,NoAI:1b,CustomName:'{"text":"Dinnerbone"}',HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{}]}},{}],HandDropChances:[0.000F,0.085F],Tags:["lumber_giant","blue"],NoGravity:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:9999,ShowParticles:1b}]}
#brings the giant down a little bit evey tick so the axe is falling
execute if entity @s[team=uRed] if score @s lumberjack_axe_slam matches ..39 at @e[tag=lumber_giant,tag=red] run tp @e[tag=lumber_giant,tag=red] ~ ~-.6 ~
execute if entity @s[team=uBlue] if score @s lumberjack_axe_slam matches ..39 at @e[tag=lumber_giant,tag=blue] run tp @e[tag=lumber_giant,tag=blue] ~ ~-.6 ~
#puts particles where the axe will fall
execute if entity @s[team=uRed] at @e[tag=lumber_ult,tag=red] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 2 .2 2 0 100 force @a
execute if entity @s[team=uBlue] at @e[tag=lumber_ult,tag=blue] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 2 .2 2 0 100 force @a
#give resistance to prevent friendly fire
execute if entity @s[team=uRed] if score @s lumberjack_axe_slam matches 40 run effect give @a[team=uRed] resistance 1 255 true
execute if entity @s[team=uBlue] if score @s lumberjack_axe_slam matches 40 run effect give @a[team=uBlue] resistance 1 255 true
#clear the resistance the next tick
execute if entity @s[team=uRed] if score @s lumberjack_axe_slam matches 41 run effect clear @a[team=uRed] resistance
execute if entity @s[team=uBlue] if score @s lumberjack_axe_slam matches 41 run effect clear @a[team=uBlue] resistance
#summons a creeper that immediatly explodes when the axe touches the ground
execute if entity @s[team=uRed] if score @s lumberjack_axe_slam matches 40 at @e[tag=lumber_ult,tag=red] run summon creeper ~ ~.2 ~ {Silent:1b,Invulnerable:1b,Fuse:1,ignited:1b,Team:"uRed",CustomName:'{"text":"Axe Throw"}'}
execute if entity @s[team=uBlue] if score @s lumberjack_axe_slam matches 40 at @e[tag=lumber_ult,tag=blue] run summon creeper ~ ~.2 ~ {Silent:1b,Invulnerable:1b,Fuse:1,ignited:1b,Team:"uBlue",CustomName:'{"text":"Axe Throw"}'}
#teleports the giant into the void so that when it is killed you dont see the death animation
execute if entity @s[team=uRed] if score @s lumberjack_axe_slam matches 40 at @s run tp @e[tag=lumber_giant,tag=red] ~ ~-200 ~
execute if entity @s[team=uBlue] if score @s lumberjack_axe_slam matches 40 at @s run tp @e[tag=lumber_giant,tag=blue] ~ ~-200 ~
#kills the giant
execute if entity @s[team=uRed] if score @s lumberjack_axe_slam matches 40 run kill @e[tag=lumber_giant,tag=red]
execute if entity @s[team=uBlue] if score @s lumberjack_axe_slam matches 40 run kill @e[tag=lumber_giant,tag=blue]
#kills the armor_stand
execute if entity @s[team=uRed] if score @s lumberjack_axe_slam matches 40 run kill @e[tag=lumber_ult,tag=red]
execute if entity @s[team=uBlue] if score @s lumberjack_axe_slam matches 40 run kill @e[tag=lumber_ult,tag=blue]
#sets the score back to 0 when the abilty is over
execute if score @s lumberjack_axe_slam matches 41 run scoreboard players set @s lumberjack_axe_slam 0