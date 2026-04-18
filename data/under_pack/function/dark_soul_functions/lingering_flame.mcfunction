item replace entity @s hotbar.1 with oak_boat
item replace entity @s hotbar.1 with blaze_rod[consumable={consume_seconds:0.5,animation:"spear",sound:"block.blastfurnace.fire_crackle",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"entity.ender_dragon.flap"}]},custom_data={lingering:true},custom_name={"bold":true,"color":"#FF8519","italic":false,"text":"Lingering Flame"}] 1
advancement revoke @s only under_pack:dark_soul/lingering_flame_check

execute if score @s ability2 matches 250.. run function under_pack:dark_soul_functions/lingering_flame_create