
item replace entity @s hotbar.8 with tipped_arrow{display:{Name:'{"text":"Sonar Arrow","color":"dark_blue"}'},scientistLightning:1b,CustomPotionColor:13311} 1

#removes xp
experience set @s 0 levels
experience set @s 0 points

#ult charge
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0