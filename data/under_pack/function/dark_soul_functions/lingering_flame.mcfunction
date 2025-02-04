execute if entity @s[team=uBlue] run summon marker ~ ~ ~ {NoGravity:1b,Tags:["FlameMarker","uBlue"]}
execute if entity @s[team=uRed] run summon marker ~ ~ ~ {NoGravity:1b,Tags:["FlameMarker","uRed"]}
execute anchored eyes run tp @n[tag=FlameMarker] ~ ~1.62 ~ ~ ~
execute as @n[tag=FlameMarker] run scoreboard players set @s ability1 100

advancement revoke @s only under_pack:lingering_flame_check