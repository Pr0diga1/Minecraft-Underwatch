attribute @s generic.scale base set .2
attribute @s generic.jump_strength base set 0
attribute @s generic.attack_damage base set -10
effect give @s speed 3 1
effect give @s resistance 3 255 true
effect give @s invisibility 3 10 true
scoreboard players set @s mermaiddive 60
item replace entity @s hotbar.3 with shears[custom_name='{"text":"Under the SSSEEEEAAA"}',damage=238]
playsound minecraft:ambient.underwater.enter master @a ~ ~ ~ 5 1
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s armor.chest with air