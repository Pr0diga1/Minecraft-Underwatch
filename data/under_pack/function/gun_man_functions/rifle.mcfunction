advancement revoke @s only under_pack:gun_man/rifle

scoreboard players set @s gunrifle 75
tag @s add nra

execute if score @s riflebuffer matches 0 run scoreboard players remove @s ability1 1
execute if score @s riflebuffer matches 0 run experience add @s -1 levels
execute if score @s riflebuffer matches 0 at @s run playsound minecraft:entity.drowned.shoot master @a ~ ~ ~ 0.35 2

execute if score @s riflebuffer matches 0 anchored eyes positioned ^ ^-.5 ^ run function under_pack:gun_man_functions/riflecast

execute if score @s riflebuffer matches 0 run item replace entity @s hotbar.0 with stone_hoe[damage=131,consumable={consume_seconds:100000000,animation:"block",sound:"block.note_block.bass",has_consume_particles:false},custom_name='{"color":"gold","text":"Rifle"}',lore=['"gun"'],custom_data={gunrifle: true, gunreload:true}] 1
execute if score @s riflebuffer matches 0 run scoreboard players set @s riflebuffer 10

tag @s remove nra