execute as @a[scores={regen_track=1},nbt={active_effects:[{id:"minecraft:regeneration",amplifier:6b,duration:19}]}] run function under_pack:regeneration/clear

execute as @a[scores={regen_timer=1..}] run scoreboard players remove @s regen_timer 1
