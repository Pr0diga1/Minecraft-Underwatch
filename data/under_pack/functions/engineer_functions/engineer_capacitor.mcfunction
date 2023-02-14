execute if entity @s[team=uRed] run tag @a[distance=..5,team=uBlue] add capped
execute if entity @s[team=uRed] at @a[tag=capped,team=uBlue] run summon marker ~ ~ ~ {Tags:["enginecap","red"]}
execute if entity @s[team=uRed] at @a[tag=capped,team=uBlue] run summon arrow ~ ~2.1 ~ {NoGravity:1b,damage:1d,Motion:[0.0,-5.0,0.0],Tags:["engineercaparrow"]}

execute if entity @s[team=uBlue] run tag @a[distance=..5,team=uRed] add capped
execute if entity @s[team=uBlue] at @a[tag=capped,team=uRed] run summon marker ~ ~ ~ {Tags:["enginecap","blue"]}
execute if entity @s[team=uBlue] at @a[tag=capped,team=uRed] run summon arrow ~ ~2.1 ~ {NoGravity:1b,damage:1d,Motion:[0.0,-5.0,0.0],Tags:["engineercaparrow"]}

item replace entity @s hotbar.0 with iron_pickaxe{display:{Name:'{"text":"Squeeky Hammer","color":"light_purple","bold":true}',Lore:['{"text":"Purchased for a very reasonable price"}']},HideFlags:5,Unbreakable:1b,Tags:["enginepick"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2.5,Operation:0,UUID:[I;-525436241,-377207569,-1460662685,-121992275],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;1987559778,1654670374,-1615110215,1839676688],Slot:"mainhand"}]} 1
experience set @s 0 levels 
scoreboard players set @s movement 10
scoreboard players set @s engineercap 0
execute at @s run playsound entity.generic.explode master @a ~ ~ ~ 5 1