# Cool message for the player when looking at the chest minecart
execute as @a[predicate=under_pack:players_changing_classes] run title @s actionbar [{"text": "Ciocie Cioelle Estrella Von Maximus the Third ","color": "#6F59FF","bold": true,"italic": false},{"text": "wishes to grant you power","color": "white","bold": false,"italic": false}]

# Checks players for specific items using /clear
# if successfull it will give them a specific class
execute store success score @s classCheck run clear @s barrier{alchemist:1b}
execute if entity @s[scores={classCheck=1..}] run trigger alchemist
scoreboard players enable @s alchemist
scoreboard players reset @s classCheck

execute store success score @s classCheck run clear @s barrier{scientist:1b}
execute if entity @s[scores={classCheck=1..}] run trigger scientist
scoreboard players enable @s scientist
scoreboard players reset @s classCheck

execute store success score @s classCheck run clear @s barrier{lumberjack:1b}
execute if entity @s[scores={classCheck=1..}] run trigger lumberjack
scoreboard players enable @s lumberjack
scoreboard players reset @s classCheck

execute store success score @s classCheck run clear @s barrier{knight:1b}
execute if entity @s[scores={classCheck=1..}] run trigger knight
scoreboard players enable @s knight
scoreboard players reset @s classCheck

execute store success score @s classCheck run clear @s barrier{rogue:1b}
execute if entity @s[scores={classCheck=1..}] run trigger rogue
scoreboard players enable @s rogue
scoreboard players reset @s classCheck

execute store success score @s classCheck run clear @s barrier{ninja:1b}
execute if entity @s[scores={classCheck=1..}] run trigger ninja
scoreboard players enable @s ninja
scoreboard players reset @s classCheck

execute store success score @s classCheck run clear @s barrier{wizard:1b}
execute if entity @s[scores={classCheck=1..}] run trigger wizard
scoreboard players enable @s wizard
scoreboard players reset @s classCheck

execute store success score @s classCheck run clear @s barrier{engineer:1b}
execute if entity @s[scores={classCheck=1..}] run trigger engineer
scoreboard players enable @s engineer
scoreboard players reset @s classCheck

execute store success score @s classCheck run clear @s barrier{paladin:1b}
execute if entity @s[scores={classCheck=1..}] run trigger paladin
scoreboard players enable @s paladin
scoreboard players reset @s classCheck

execute store success score @s classCheck run clear @s barrier{archer:1b}
execute if entity @s[scores={classCheck=1..}] run trigger archer
scoreboard players enable @s archer
scoreboard players reset @s classCheck

# Resets elements of the UI as to keep it consistant
data merge entity @e[type=chest_minecart,limit=1,sort=nearest] {NoGravity:1b,Invulnerable:1b,Motion:[0.0,0.0,0.0],Items:[{Slot:0b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:1b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:3b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:4b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:5b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:6b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:7b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:8b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:9b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:10b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:11b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Alchemist Class","color":"#8934C9","bold":true,"italic":false}',Lore:['{"text":"Disolve your enemies.","color":"#8934C9","italic":false}','{"text":"Heal your friends.","color":"#8934C9","italic":false}','{"text":"Play with funny chemicals.","color":"#8934C9","italic":false}']},CustomModelData:1,alchemist:1b}},{Slot:12b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Scientist Class","color":"#8934C9","bold":true,"italic":false}',Lore:['{"text":"Enjoy new field test opportunities","color":"#8934C9","italic":false}']},CustomModelData:1,scientist:1b}},{Slot:13b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Lumberjack Class","color":"#8934C9","bold":true,"italic":false}',Lore:['{"text":"Swing swing swing","color":"#8934C9","italic":false}','{"text":"Chop chop chop","color":"#8934C9","italic":false}','{"text":"My axe is my buddy,","color":"#8934C9"}','{"text":"we right the planets wrongs.","color":"#8934C9"}']},CustomModelData:1,lumberjack:1b}},{Slot:14b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Knight Class","color":"#8934C9","bold":true,"italic":false}',Lore:['{"text":"Veteran of all wars.","color":"#8934C9","italic":false}']},CustomModelData:1,knight:1b}},{Slot:15b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Rogue Class","color":"#8934C9","bold":true,"italic":false}',Lore:['{"text":"Silent but deadly","color":"#8934C9","italic":false}']},CustomModelData:1,rogue:1b}},{Slot:16b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:17b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:18b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:19b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:20b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Ninja Class","color":"#8934C9","bold":true,"italic":false}',Lore:['{"text":"Swift as a coursing river","color":"#8934C9","italic":false}','{"text":"With all the force of a great typhoon","color":"#8934C9","italic":false}','{"text":"With all the strenght of a raging fire","color":"#8934C9","italic":false}']},CustomModelData:1,ninja:1b}},{Slot:21b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Wizard Class","color":"#8934C9","bold":true,"italic":false}',Lore:['{"text":"ITS WIZARD TIME MOTHA FUCKA!!!","color":"#E09004","italic":false}','{"text":"FIREBALL!!!!","color":"#F00000","bold":true,"italic":false}']},CustomModelData:1,wizard:1b}},{Slot:22b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Engineer Class","color":"#8934C9","bold":true,"italic":false}',Lore:['{"text":"100% Juiceless,","color":"#8934C9","italic":false}','{"text":"Delux 2 meter tall body,","color":"#8934C9"}','{"text":"Average puppy shooter.","color":"#8934C9"}']},CustomModelData:1,engineer:1b}},{Slot:23b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Paladin Class","color":"#8934C9","bold":true,"italic":false}',Lore:['{"text":"Might drop Paladin\'s Shield.","color":"#8934C9","italic":false}']},CustomModelData:1,paladin:1b}},{Slot:24b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":"Archer Class","color":"#8934C9","bold":true,"italic":false}',Lore:['{"text":"They don\'t know I play One Shot.","color":"#8934C9","italic":false}']},CustomModelData:1,archer:1b}},{Slot:25b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:1}},{Slot:26b,id:"minecraft:barrier",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:2}}]}
clear @s barrier
