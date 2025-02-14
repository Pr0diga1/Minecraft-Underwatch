advancement revoke @s only under_pack:bard_barian/blue_lament
advancement revoke @s only under_pack:bard_barian/red_lament

say hi

execute if entity @s[team=uBlue] as @p[team=uRed,scores={class=17}] at @s run summon marker ~ ~1 ~ {Tags:["NoteL","uRed"]}
execute if entity @s[team=uBlue] at @p[team=uRed,scores={class=17}] store result score @n[tag=NoteL,tag=uRed] ability1 run return run scoreboard players get @s class

execute as @p[team=uBlue,scores={class=17}] at @s run summon marker ~ ~1 ~ {Tags:["NoteL","uBlue"]}
execute at @p[team=uBlue,scores={class=17}] store result score @n[tag=NoteL,tag=uBlue] ability1 run scoreboard players get @s class