scoreboard players add @s ability2 1

$execute if entity @s[tag=uBlue] facing entity @p[scores={class=$(class)},team=uRed] eyes run tp ^ ^ ^0.2
$execute if entity @s[tag=uBlue,scores={ability2=20..}] run return run playsound minecraft:block.note_block.banjo master @p[scores={class=$(class)},team=uREd] ~ ~ ~ 1 0.5

$execute if entity @s[tag=uRed] facing entity @p[scores={class=$(class)},team=uBlue] eyes run tp ^ ^ ^0.2
$execute if entity @s[tag=uRed,scores={ability2=20..}] run return run playsound minecraft:block.note_block.banjo master @p[scores={class=$(class)},team=uBlue] ~ ~ ~ 1 0.5
