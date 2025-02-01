tag @s add dontheal
$execute positioned $(x) $(y) $(z) run effect give @a[team=uBlue,tag=!dontheal,distance=..3] instant_health
tag @s remove dontheal
$execute positioned $(x) $(y) $(z) run effect give @s[distance=..3] regeneration 2 2 true 
$execute positioned $(x) $(y) $(z) run function under_pack:engineer_functions/engineer_particle
scoreboard players set @s ability2 49