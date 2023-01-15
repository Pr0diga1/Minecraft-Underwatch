# IDs locked targets to count and order them
scoreboard players set IDBlue constant 0
scoreboard players set IDRed constant 0
execute if entity @s[team=uBlue] as @a[team=uRed,tag=target_locked] run function under_pack:rogue_functions/target_id
execute if entity @s[team=uRed] as @a[team=uBlue,tag=target_locked] run function under_pack:rogue_functions/target_id

# Tags you for this action
tag @s add executing

# Resets reset
scoreboard players reset @s reset

# Kill tp_to
kill @e[tag=tp_to,sort=nearest,limit=1]

# Main weapon
item replace entity @s hotbar.8 with netherite_sword{display:{Name:'{"text":"Netherite Dagger","color":"#472659","bold":true,"italic":false}'},CustomModelData:1,dagger:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;2030465041,-1224523562,-1231173866,-1811458856],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;993380834,826688861,-1362153008,-104466871],Slot:"mainhand"}]} 1
