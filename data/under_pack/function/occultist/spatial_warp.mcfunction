advancement revoke @s only under_pack:occultist/warp
item replace entity @s hotbar.2 with oak_boat
item replace entity @s hotbar.2 with spire_armor_trim_smithing_template[consumable={consume_seconds:2,animation:"spyglass",sound:"ambient.underwater.loop",has_consume_particles:false},custom_data={spacewarp:true},custom_name='[{"color":"#2100A3","text":"S"},{"color":"#2B00A3","text":"p"},{"color":"#3500A3","text":"a"},{"color":"#3E00A3","text":"t"},{"color":"#4800A3","text":"i"},{"color":"#5200A3","text":"a"},{"color":"#5C00A3","text":"l "},{"color":"#6600A3","text":"W"},{"color":"#7000A3","text":"a"},{"color":"#7900A3","text":"r"},{"color":"#8D00A3","text":"p"}]',use_cooldown={seconds:10}] 1

playsound block.portal.travel master @a ~ ~ ~ 0.1 1

execute if entity @s[team=uBlue] at @e[type=marker,tag=warp_teleporter,tag=uBlue] run tp ~ ~1 ~
execute if entity @s[team=uRed] at @e[type=marker,tag=warp_teleporter,tag=uRed] run tp ~ ~1 ~

execute if entity @s[team=uBlue] run kill @e[type=marker,tag=warp_teleporter,tag=uBlue]
execute if entity @s[team=uRed] run kill @e[type=marker,tag=warp_teleporter,tag=uRed]