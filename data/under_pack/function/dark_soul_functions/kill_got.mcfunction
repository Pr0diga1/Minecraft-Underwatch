execute unless entity @s[nbt={Inventory:[{Slot:1b,count:3}]}] run give @s honey_bottle[custom_name='{"bold":true,"color":"gold","italic":false,"text":"Estus Flask"}',custom_data={estus:true},consumable={consume_seconds:1,animation:"drink",sound:"ambient.underwater.loop",on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:regeneration",amplifier:3,duration:100,show_particles:1b,show_icon:1b,ambient:0b}]}]}] 1
execute unless entity @s[nbt={Inventory:[{Slot:2b,count:2}]}] run give @s blaze_rod[consumable={consume_seconds:0,animation:"spear",sound:"block.blastfurnace.fire_crackle",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"entity.ender_dragon.flap"}]},custom_data={lingering:true},use_cooldown={seconds:2},custom_name='{"bold":true,"color":"#FF8519","italic":false,"text":"Lingering Flame"}'] 1
execute unless entity @s[nbt={Inventory:[{Slot:3b,count:3}]}] run give @s blaze_powder[consumable={consume_seconds:1,animation:"bow",sound:"block.blastfurnace.fire_crackle",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"item.firecharge.use"}]},custom_data={immolation:true},use_cooldown={seconds:5},custom_name='{"bold":true,"color":"#FF8519","italic":false,"text":"Immolation"}'] 1

effect clear @s absorption
effect give @s absorption infinite 0
scoreboard players reset @s ultKills
