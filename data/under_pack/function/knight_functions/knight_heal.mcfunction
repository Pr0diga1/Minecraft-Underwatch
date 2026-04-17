scoreboard players reset @s reset
effect give @s minecraft:regeneration 3 3 true
#execute at @s run particle minecraft:poof ~ ~ ~ .3 1 .3 .1 60 force @a
execute at @s run particle minecraft:dust{color:[0.953,0.431,1.0],scale:1} ~ ~ ~ .5 1 .5 .1 100 force @a

execute at @s run playsound minecraft:entity.allay.ambient_without_item master @a[distance=..8]
#scoreboard players set @s movement 320

item replace entity @s hotbar.1 with oak_boat
item replace entity @s hotbar.1 with breeze_rod[consumable={consume_seconds:1.25,animation:"eat",sound:"ambient.underwater.loop",has_consume_particles:false},custom_name={"color":"gold","text":"Selfish Prayer"},custom_data={knightheal:1b},item_model="totem_of_undying",use_cooldown={seconds:17}] 1


advancement revoke @s only under_pack:dark_soul/paladin