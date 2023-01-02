#ult is active
scoreboard players set @s ninjaUltActive 1
scoreboard players set @s ninjaUltTiming 160

#gives the new sword
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Katana","color":"purple"}',Lore:['{"text":"Right Click to dash"}']},Unbreakable:1b,CustomModelData:26,ninjaDash:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;1520474351,-724482230,-2011761515,-1621437572],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1987712785,-1780136362,-1599293670,384017204],Slot:"mainhand"}]} 1

#effect
effect give @s speed 8 1
#clears carrot on stick
item replace entity @s hotbar.8 with air

#playsound
execute at @s run playsound minecraft:entity.ender_dragon.growl master @a[distance=..100] ~ ~ ~ 1 1 1

#give 8 levels
experience set @s 8 levels