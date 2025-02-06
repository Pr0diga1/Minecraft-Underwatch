#shine
execute if entity @s[team=uRed,nbt={OnGround:0b}] if score @s celedamage matches 1.. as @a[team=uRed, distance=..8] run function under_pack:celestial_functions/sun/shine
execute if score @s[team=uBlue] celedamage matches 33.. as @a[team=uBlue, distance=..8] run function under_pack:celestial_functions/sun/shine

#supernova
execute if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{celenova:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{celenova:1b}}}},scores={reset=1..}] run function under_pack:celestial_functions/sun/nova
execute if score @s celenova matches 1.. run function under_pack:celestial_functions/sun/novatick with storage celestial nova
execute if score @s celenova matches 1 store result storage celestial nova.x double .1 run scoreboard players get @s celetaken
execute if score @s celenova matches 1 run function under_pack:celestial_functions/sun/novadamage with storage celestial nova

scoreboard players reset @s celedamage

function under_pack:celestial_functions/sun/cooldown