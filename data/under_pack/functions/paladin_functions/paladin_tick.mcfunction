#carrot on stick detection
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{paladinBubble:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{paladinBubble:1b}}},scores={reset=1..}] if score @s ability1 matches 180.. at @s run function under_pack:paladin_functions/paladin_bubble
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{paladinScream:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{paladinScream:1b}}},scores={reset=1..}] if score @s ability2 matches 240.. at @s run function under_pack:paladin_functions/paladin_scream

#reset reset
scoreboard players reset @s reset

#cooldowns
function under_pack:paladin_functions/paladin_cooldown