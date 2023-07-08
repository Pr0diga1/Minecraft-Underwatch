## Chaos passive
execute store result score @s ability1 run data get entity @s Health 10
item modify entity @s hotbar.0 under_pack:dark_soul/damage_update

## Slam
# Detect right click
execute if entity @s[nbt={Inventory:[{Slot:0b,tag:{zwei:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{zwei:1b}}},scores={reset=1..}] run function under_pack:dark_soul_functions/slam

item replace entity @s hotbar.1 with ender_eye{display:{Name:'{"text":"Chaos Zweihänder","color":"#FF4912","bold":true,"italic":false,"underlined":true}'},Unbreakable:1b,CustomModelData:51,zwei:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;440549188,-1922806094,-1556991015,440606285],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;1207194066,-738309455,-1712229264,-1185358023],Slot:"mainhand"}]} 2

#Attack
execute if score @s darkEye = @s darkEyeBuffer if score @s darkEye matches 1.. run effect clear @s speed
execute if score @s darkEye = @s darkEyeBuffer run scoreboard players set @s darkEye 0
scoreboard players operation @s darkEyeBuffer = @s darkEye
