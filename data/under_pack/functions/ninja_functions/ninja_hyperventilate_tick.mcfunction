
#scoreboard goes down
scoreboard players remove @s ninjaHyperventilate 1

#remove a damage every 3 ticks
scoreboard players operation @s ninjaHyperventilateBuffer = @s ninjaHyperventilate
scoreboard players operation @s ninjaHyperventilateBuffer %= TheNumberTwo constant
execute if score @s ninjaHyperventilateBuffer matches 0 run item modify entity @s hotbar.2 under_pack:down1damage


#playsound at 0
execute if score @s ninjaHyperventilate matches 0 at @s run playsound minecraft:block.iron_door.close master @a ~ ~ ~

#reset at 0
execute if score @s ninjaHyperventilate matches 0 run item replace entity @s hotbar.2 with carrot{CustomModelData:32,display:{Name:'{"text":"Brass Knuckles","color":"gold"}',Lore:['{"text":"Right Click to hyperventilate"}']},ninjaHyperventilate:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-1720202667,-1900395342,-1354315421,-1721737083],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;1437762905,795430736,-1620033804,-281481686],Slot:"mainhand"}]} 15