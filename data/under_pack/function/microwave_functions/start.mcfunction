clear @s
item replace entity @s armor.chest with diamond_chestplate[unbreakable={},custom_data={wave:1b}] 1
item replace entity @s armor.legs with diamond_leggings[unbreakable={}] 1
item replace entity @s armor.head with diamond_helmet[unbreakable={}] 1
item replace entity @s armor.feet with diamond_boots[unbreakable={}] 1

execute if entity @s[team=uRed] run kill @e[tag=microride,tag=red]
execute if entity @s[team=uBlue] run kill @e[tag=microride,tag=blue]