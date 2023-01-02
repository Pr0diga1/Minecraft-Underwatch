#reseting ult scoreboards
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0

#removes xp
experience set @s 0 levels
experience set @s 0 points

#gives the normal sword back
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Katana","color":"dark_gray"}',Lore:['{"text":"Right Click to dash"}']},Unbreakable:1b,CustomModelData:23,ninjaDash:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-60281256,1605386620,-2044590929,-1737995415],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;252760011,-672706990,-1314077270,258490446],Slot:"mainhand"}]} 1

#playsound
execute at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~

#resetting ult tracking scoreboards
scoreboard players set @s ninjaUltActive 0
scoreboard players set @s ninjaUltTiming 0