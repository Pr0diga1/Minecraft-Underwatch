#carrot on a stick detection
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{lumberjump:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberjump:1b}}},scores={reset=1..}] as @s run function under_pack:lumberjack_functions/lumberjack_jump
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{lumberthrow:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberthrow:1b}}},scores={reset=1..}] as @s run function under_pack:lumberjack_functions/lumberjack_throw
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{lumberdrop:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberdrop:1b}}},scores={reset=1..}] if score @s lumberjack_ult_casts matches 1.. at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:lumberjack_functions/lumberjack_start_ray
#sweep
execute if entity @s[team=uRed] if score @s lumberjack_sweep matches 1..12 as @e[tag=lumberaxemove,tag=red] at @s run tp @s ^ ^ ^.5
execute if entity @s[team=uRed] at @e[tag=lumberaxemove,tag=red] as @a[distance=..2,tag=!arrowed,team=!uRed] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:2.2d,Motion:[0.0,-5.0,0.0],Tags:["lumbersweeparrow","red"]}
execute if entity @s[team=uRed] at @e[tag=lumberaxemove,tag=red] as @a[distance=..2] run tag @s add arrowed
execute if entity @s[team=uRed] at @e[tag=lumberaxemove,tag=red] as @a[distance=2..] run tag @s remove arrowed
execute if entity @s[team=uRed] at @s run data modify entity @e[limit=1,sort=nearest,tag=lumbersweeparrow,tag=red] Owner set from entity @s UUID
execute if entity @s[team=uRed] if score @s lumberjack_sweep matches 1 run kill @e[type=armor_stand,tag=lumberaxemove,tag=red]
execute if entity @s[team=uRed] if score @s lumberjack_sweep matches 1 run kill @e[type=armor_stand,tag=lumberaxestill,tag=red]
execute if entity @s[team=uRed] if score @s lumberjack_sweep matches 1.. run scoreboard players remove @s lumberjack_sweep 1

execute if entity @s[team=uBlue] if score @s lumberjack_sweep matches 1..12 as @e[tag=lumberaxemove,tag=blue] at @s run tp @s ^ ^ ^.5
execute if entity @s[team=uBlue] at @e[tag=lumberaxemove,tag=blue] as @a[distance=..2,tag=!arrowed,team=!uBlue] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:2.2d,Motion:[0.0,-5.0,0.0],Tags:["lumbersweeparrow","blue"]}
execute if entity @s[team=uBlue] at @e[tag=lumberaxemove,tag=blue] as @a[distance=..2] run tag @s add arrowed
execute if entity @s[team=uBlue] at @e[tag=lumberaxemove,tag=blue] as @a[distance=2..] run tag @s remove arrowed
execute if entity @s[team=uBlue] at @s run data modify entity @e[limit=1,sort=nearest,tag=lumbersweeparrow,tag=blue] Owner set from entity @s UUID
execute if entity @s[team=uBlue] if score @s lumberjack_sweep matches 1 run kill @e[type=armor_stand,tag=lumberaxemove,tag=blue]
execute if entity @s[team=uBlue] if score @s lumberjack_sweep matches 1 run kill @e[type=armor_stand,tag=lumberaxestill,tag=blue]
execute if entity @s[team=uBlue] if score @s lumberjack_sweep matches 1.. run scoreboard players remove @s lumberjack_sweep 1

#jump cooldown
execute if score @s movement matches ..80 run scoreboard players add @s movement 1
execute if score @s movement matches 80 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Strong Jump","color":"blue"}'},lumberjump:1b} 1
#throw cooldown
execute if score @s ability1 matches ..200 run scoreboard players add @s ability1 1
execute if score @s ability1 matches 200 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Axe Sweep","color":"green"}'},lumberthrow:1b} 1
#makes the ult function run every tick while it is active
execute if score @s lumberjack_axe_slam matches 1..41 as @s run function under_pack:lumberjack_functions/lumberjack_ult
execute if score @s lumberjack_axe_slam2 matches 1..41 as @s run function under_pack:lumberjack_functions/lumberjack_ult2
execute if score @s lumberjack_axe_slam3 matches 1..41 as @s run function under_pack:lumberjack_functions/lumberjack_ult3
#ult charge
execute if score @s lumberjack_ult_casts matches 0 run function under_pack:lumberjack_functions/lumberjack_ult_charge
#cooldowns
function under_pack:lumberjack_functions/lumberjack_cooldown
