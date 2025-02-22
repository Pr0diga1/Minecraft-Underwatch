advancement revoke @s only under_pack:occultist/wounds
item replace entity @s hotbar.2 with oak_boat
item replace entity @s hotbar.2 with rib_armor_trim_smithing_template[consumable={consume_seconds:1,animation:"block",sound:"ambient.underwater.loop",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"entity.allay.death"}]},custom_data={sharewounds:true},custom_name='{"bold":true,"color":"dark_red","italic":false,"text":"Share Wounds"}',use_cooldown={seconds:5}] 1

scoreboard players reset distance buffer
execute anchored eyes positioned ^ ^ ^ run function under_pack:occultist/share_wounds_raycast
execute unless entity @p[tag=sharing] run return 0

execute store result score @s ability2 run scoreboard players get @s heart
scoreboard players operation @s ability2 -= @p[tag=sharing] heart

execute if score @s ability2 matches 0 run return 0
say im so ticked up
execute store result storage occultist share.amount double 1 run scoreboard players get @s ability1
execute if score @s ability2 matches 1.. run return run function under_pack:occultist/share_wounds_player with storage occultist share
execute store result storage occultist share.amount double 1 run scoreboard players operation @s ability1 *= -1 constant
function under_pack:occultist/share_wounds_teammate with storage occultist share