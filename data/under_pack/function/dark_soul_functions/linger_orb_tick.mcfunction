execute if entity @s[scores={ability1=..0}] run return run function under_pack:dark_soul_functions/explode_linger

execute if entity @s[scores={ability1=1..}] run scoreboard players remove @s ability1 1
tp ^ ^ ^0.1
particle minecraft:flame ~ ~ ~ 0 0 0 0.01 1

execute if entity @s[scores={ability1=80}] run particle minecraft:lava ~ ~ ~ 0 0 0 0.1 1
execute if entity @s[scores={ability1=80}] run return run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 0.1 2

execute if entity @s[scores={ability1=50}] run particle minecraft:lava ~ ~ ~ 0 0 0 0.1 10
execute if entity @s[scores={ability1=50}] run return run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 2

execute if entity @s[scores={ability1=20}] run particle minecraft:lava ~ ~ ~ 0 0 0 0.1 10
execute if entity @s[scores={ability1=20}] run return run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 2

execute if entity @s[scores={ability1=15}] run particle minecraft:lava ~ ~ ~ 0 0 0 0.1 10
execute if entity @s[scores={ability1=15}] run return run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 0.5 1

execute if entity @s[scores={ability1=10}] run particle minecraft:lava ~ ~ ~ 0 0 0 0.1 10
execute if entity @s[scores={ability1=10}] run return run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 0.5 0.5

execute if entity @s[scores={ability1=9}] run particle minecraft:lava ~ ~ ~ 0 0 0 0.1 10
execute if entity @s[scores={ability1=8}] run return run particle minecraft:lava ~ ~ ~ 0 0 0 0.1 10
execute if entity @s[scores={ability1=7}] run return run particle minecraft:lava ~ ~ ~ 0 0 0 0.1 10
execute if entity @s[scores={ability1=6}] run return run particle minecraft:lava ~ ~ ~ 0 0 0 0.1 10
execute if entity @s[scores={ability1=5}] run particle minecraft:lava ~ ~ ~ 0 0 0 0.1 10
execute if entity @s[scores={ability1=9}] run return run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1
execute if entity @s[scores={ability1=5}] run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1
