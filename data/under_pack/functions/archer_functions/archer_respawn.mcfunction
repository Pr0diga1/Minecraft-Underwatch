execute if entity @s[team=uRed] run kill @e[tag=archertrack,tag=red]
execute if entity @s[team=uBlue] run kill @e[tag=archertrack,tag=blue]
scoreboard players set @s ability1 1
scoreboard players set @s ability2 1
scoreboard players set @s ability3 139

item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:50,display:{Name:'{"text":"Backstep","color":"green"}'},archerBackstep:1b} 1

