execute if entity @s[team=uBlue] run summon marker ~ ~ ~ {NoGravity:1b,Tags:["FlameMarker","uBlue"]}
execute if entity @s[team=uRed] run summon marker ~ ~ ~ {NoGravity:1b,Tags:["FlameMarker","uRed"]}

execute anchored eyes run tp @n[tag=FlameMarker] ~ ~1.62 ~ ~ ~

execute as @n[tag=FlameMarker] run scoreboard players set @s ability1 80

scoreboard players remove @s ability2 250
experience add @s -250 points
function under_pack:dark_soul_functions/check_ember