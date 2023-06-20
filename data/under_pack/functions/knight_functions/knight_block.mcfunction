stopsound @a * minecraft:entity.ender_eye.launch
stopsound @a * minecraft:entity.ender_eye.death
execute if score @s class matches 4 run effect give @s resistance 1 2 true
execute at @s run particle minecraft:glow ~ ~.7 ~ .3 .5 .3 .001 10 force @a

execute if score @s blockIsActive matches ..1 run scoreboard players add @s blockIsActive 1

item replace entity @s hotbar.0 with ender_eye{CustomModelData:3,display:{Name:'{"text":"Reliquary Blade","color":"white"}',Lore:['{"text":"Only given to those worthy"}']},HideFlags:5,knightsword:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;1830644796,1135495493,-1953374725,900861682],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;1787687604,386813173,-1856770668,-2070457650],Slot:"mainhand"}]} 1
