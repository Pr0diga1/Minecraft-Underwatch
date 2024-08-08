tag @s add dontheal
$execute positioned $(x) $(y) $(z) run effect give @a[team=uBlue,tag=!dontheal,distance=..3] instant_health
tag @s remove dontheal
$execute positioned $(x) $(y) $(z) run effect give @s[distance=..3] instant_health 
$execute positioned $(x) $(y) $(z) run damage @s[distance=..3] 2 minecraft:generic 
$execute positioned $(x) $(y) $(z) run stopsound @s[distance=..3] * minecraft:entity.player.hurt
$execute positioned $(x) $(y) $(z) run function under_pack:engineer_functions/engineer_particle
scoreboard players set @s ability2 61