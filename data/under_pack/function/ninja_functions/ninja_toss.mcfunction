
#summon the arrows
#red
execute at @s[team=uRed] run summon minecraft:arrow ~ ~ ~ {Tags:["ninjaArrow1","nared"],damage:2.4d}
execute at @s[team=uRed] run summon minecraft:arrow ~ ~ ~ {Tags:["ninjaArrow2","nared"],damage:2.4d}
execute at @s[team=uRed] run summon minecraft:arrow ~ ~ ~ {Tags:["ninjaArrow3","nared"],damage:2.4d}
#blue
execute at @s[team=uBlue] run summon minecraft:arrow ~ ~ ~ {Tags:["ninjaArrow1","nablue"],damage:2.4d}
execute at @s[team=uBlue] run summon minecraft:arrow ~ ~ ~ {Tags:["ninjaArrow2","nablue"],damage:2.4d}
execute at @s[team=uBlue] run summon minecraft:arrow ~ ~ ~ {Tags:["ninjaArrow3","nablue"],damage:2.4d}

#give the arrows owners
execute at @s run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=ninjaArrow1] Owner set from entity @s UUID
execute at @s run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=ninjaArrow2] Owner set from entity @s UUID
execute at @s run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=ninjaArrow3] Owner set from entity @s UUID

#playsound
execute at @s run playsound minecraft:entity.villager.work_fletcher master @a ~ ~ ~ 5 2

#reset the carrot on stick objective
scoreboard players reset @s reset

#cooldowns
scoreboard players set @s ability2 180
item replace entity @s hotbar.1 with barrier[custom_name={"color":"blue","text":"Shuriken Throw"},unbreakable={},custom_data={ninjaToss:1b}] 9
