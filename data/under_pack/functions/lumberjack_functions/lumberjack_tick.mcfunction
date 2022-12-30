#carrot on a stick detection
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{lumberjump:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberjump:1b}}},scores={reset=1..}] run function under_pack:lumberjack_functions/lumberjack_jump
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{lumberthrow:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberthrow:1b}}},scores={reset=1..}] run function under_pack:lumberjack_functions/lumberjack_throw
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{lumberdrop:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberdrop:1b}}},scores={reset=1..}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:lumberjack_functions/lumberjack_start_ray
#gives the arrow (axe) velocity for lumberjack_throw
#red
execute as @e[tag=lumberarrow,tag=red] store result entity @s Motion[0] double 0.003 run scoreboard players get @s LumberjackMotionX
execute as @e[tag=lumberarrow,tag=red] store result entity @s Motion[1] double 0.003 run scoreboard players get @s LumberjackMotionY
execute as @e[tag=lumberarrow,tag=red] store result entity @s Motion[2] double 0.003 run scoreboard players get @s LumberjackMotionZ
#blue
execute as @e[tag=lumberarrow,tag=blue] store result entity @s Motion[0] double 0.003 run scoreboard players get @s LumberjackMotionX
execute as @e[tag=lumberarrow,tag=blue] store result entity @s Motion[1] double 0.003 run scoreboard players get @s LumberjackMotionY
execute as @e[tag=lumberarrow,tag=blue] store result entity @s Motion[2] double 0.003 run scoreboard players get @s LumberjackMotionZ
#jump cooldown
execute if score @s movement matches ..120 run scoreboard players add @s movement 1
execute if score @s movement matches 120 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Strong Jump","color":"blue"}'},lumberjump:1b} 1
#throw cooldown
execute if score @s ability1 matches ..200 run scoreboard players add @s ability1 1
execute if score @s ability1 matches 200 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Axe Throw","color":"green"}'},lumberthrow:1b} 1
#makes the ult function run every tick while it is active
execute if score @s lumberjack_axe_slam matches 1..41 as @s run function under_pack:lumberjack_functions/lumberjack_ult
#ult charge
execute as @s run function under_pack:lumberjack_functions/lumberjack_ult_charge
#cooldowns
function under_pack:lumberjack_functions/lumberjack_cooldown
#makes the axe throw acutally look like an axe
execute if entity @s[team=uRed] at @e[tag=lumberarrow,tag=red,limit=1,sort=nearest] run tp @e[tag=lumberaxe,tag=red,limit=1,sort=nearest] ~ ~-.5 ~ facing entity @e[tag=red,tag=lumberarrow,limit=1,sort=nearest]
execute if entity @s[team=uBlue] at @e[tag=lumberarrow,tag=blue,limit=1,sort=nearest] run tp @e[tag=lumberaxe,tag=blue,limit=1,sort=nearest] ~ ~-.5 ~ facing entity @e[tag=blue,tag=lumberarrow,limit=1,sort=nearest]
execute unless entity @e[type=arrow,tag=lumberarrow,tag=red] run kill @e[tag=red,tag=lumberaxe]
execute unless entity @e[type=arrow,tag=lumberarrow,tag=blue] run kill @e[tag=lumberaxe,tag=blue]