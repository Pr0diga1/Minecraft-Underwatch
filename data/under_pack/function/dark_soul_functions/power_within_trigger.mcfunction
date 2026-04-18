item replace entity @s hotbar.2 with oak_boat
item replace entity @s hotbar.2 with open_eyeblossom[consumable={consume_seconds:1,animation:"bow",sound:"block.amethyst_block.resonate",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"entity.blaze.death"}]},custom_data={power:true},custom_name={"bold":true,"color":"#730A0A","italic":false,"text":"Power Within"}] 1

execute if score @s ability2 matches 475.. run function under_pack:dark_soul_functions/power_within_start

advancement revoke @s only under_pack:dark_soul/power_within