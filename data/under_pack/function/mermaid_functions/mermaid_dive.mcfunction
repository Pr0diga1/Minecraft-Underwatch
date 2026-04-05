attribute @s scale base set .2
attribute @s jump_strength base set 0
attribute @s attack_damage base set -10
attribute @s step_height base set 1.1
effect give @s speed 3 1
effect give @s resistance 3 255 true
effect give @s invisibility 3 10 true
execute at @s run particle minecraft:rain ~ ~ ~ .5 1.2 .5 .1 200 force
scoreboard players set @s mermaiddive 60
item replace entity @s hotbar.2 with shears[custom_name={"text":"Under the SSSEEEEAAA"},damage=238]
playsound minecraft:ambient.underwater.enter master @a ~ ~ ~ 5 1
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s armor.chest with air