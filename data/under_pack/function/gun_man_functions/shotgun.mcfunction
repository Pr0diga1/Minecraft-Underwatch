advancement revoke @s only under_pack:gun_man/shotgun

scoreboard players set @s gunshot 8
tag @s add nra

execute if score @s gunshotbuffer matches 0 run scoreboard players remove @s ability1 2
execute if score @s gunshotbuffer matches 0 run experience add @s -2 levels

execute at @a rotated as @s anchored eyes positioned ^1 ^-1 ^.5 as @a[dx=1,dy=1,dz=1,tag=!nra] run say ghi


scoreboard players reset @s gunshot

execute if score @s gunshotbuffer matches ..1 run item replace entity @s hotbar.1 with iron_hoe[damage=250,consumable={consume_seconds:100000000,animation:"block",sound:"block.note_block.bass",has_consume_particles:false},custom_name='{"color":"red","text":"Shotgun"}',lore=['"gun"'],custom_data={gunshot: true, gunreload:true}] 1
execute if score @s gunshotbuffer matches ..1 run scoreboard players set @s gunshotbuffer 21

execute at @s run playsound minecraft:entity.drowned.shoot master @a ~ ~ ~ 0.35 0

tag @s remove nra
