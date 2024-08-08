tag @a[tag=magneticred,limit=1,sort=nearest] add neare
tag @a[tag=magneticred,limit=1,sort=furthest] add fare

execute as @a[tag=neare,limit=1] at @s facing entity @a[tag=fare,limit=1] feet run tp @s ^ ^1 ^2
execute as @a[tag=fare,limit=1] at @s facing entity @a[tag=neare,limit=1] feet run tp @s ^ ^1 ^2
execute as @a[tag=fare,limit=1] at @s if entity @a[tag=neare,limit=1,distance=..2] run function under_pack:engineer_functions/engineer_magnet_clash_red
execute as @a[tag=neare,limit=1] at @s if entity @a[tag=fare,limit=1,distance=..2] run function under_pack:engineer_functions/engineer_magnet_clash_red

tag @a remove neare
tag @a remove fare