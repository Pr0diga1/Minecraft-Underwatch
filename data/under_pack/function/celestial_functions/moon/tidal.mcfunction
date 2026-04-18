scoreboard players set @s ability7 2

advancement revoke @s only under_pack:celestial/tidal

#return if we already have a target
execute as @s[team=uRed] if entity @a[tag=2bpr] run return run title @s actionbar {"text":"target selected"}
execute as @s[team=uBlue] if entity @a[tag=2bpb] run return run title @s actionbar {"text":"target selected"}

tag @s add me

scoreboard players set @s celetidal 60

execute at @s anchored eyes positioned ^ ^ ^ run function under_pack:celestial_functions/moon/tidalcast

#playsound
execute as @s[team=uRed] if entity @a[tag=2bpr] run playsound entity.arrow.hit_player master @s
execute as @s[team=uBlue] if entity @a[tag=2bpb] run playsound entity.arrow.hit_player master @s


tag @s remove me