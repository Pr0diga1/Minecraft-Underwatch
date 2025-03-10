scoreboard players set @s celetidal 100
tag @s add me

execute if score @s ability7 matches 0 anchored eyes positioned ^ ^ ^ run function under_pack:celestial_functions/moon/tidalcast

#playsound
execute as @s[team=uRed] if entity @a[tag=2bpr] run playsound entity.arrow.hit_player master @s
execute as @s[team=uBlue] if entity @a[tag=2bpb] run playsound entity.arrow.hit_player master @s

scoreboard players set @s ability7 3

advancement revoke @s only under_pack:celestial/tidal

tag @s remove me