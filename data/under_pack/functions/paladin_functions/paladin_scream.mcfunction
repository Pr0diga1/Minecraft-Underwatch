#absorbtion
effect give @s absorption 6 1
execute as @s[team=uRed] at @s run effect give @a[team=uRed,distance=..3] absorption 6 1
execute as @s[team=uRed] at @s run effect give @a[team=uBlue,distance=..3] poison 2 3
execute as @s[team=uBlue] at @s run effect give @a[team=uBlue,distance=..3] absorption 6 1
execute as @s[team=uBlue] at @s run effect give @a[team=uRed,distance=..3] poison 2 3

#sound
playsound entity.ghast.scream master @a ~ ~ ~ 1 0.5

#particles
particle dust 0.447 0.361 0.227 1 ~ ~ ~ 1.4 1 1.4 0 2000

#reset
scoreboard players reset @s reset
scoreboard players set @s ability2 0
item replace entity @s hotbar.2 with carrot_on_a_stick{Damage:25,display:{Name:'{"text":"Fard","color":"#5E4C2C"}'},paladinScream:1b} 1