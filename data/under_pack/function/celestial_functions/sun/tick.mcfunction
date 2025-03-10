#shine
execute if entity @s[team=uRed] if score @s celedamage matches 1.. as @a[team=uRed, distance=..8] run function under_pack:celestial_functions/sun/shine
execute if entity @s[team=uBlue] if score @s celedamage matches 1.. as @a[team=uBlue, distance=..8] run function under_pack:celestial_functions/sun/shine
execute if entity @s[team=uRed] if score @s celedamagehelper matches 1.. as @a[team=uRed, distance=..8] run function under_pack:celestial_functions/sun/shine
execute if entity @s[team=uBlue] if score @s celedamagehelper matches 1.. as @a[team=uBlue, distance=..8] run function under_pack:celestial_functions/sun/shine

#supernova
execute if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{celenova:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{celenova:1b}}}},scores={reset=1..}] run function under_pack:celestial_functions/sun/nova
execute if score @s celenova matches 1.. run function under_pack:celestial_functions/sun/novatick with storage celestial nova
execute if score @s celenova matches 1 store result storage celestial nova.x double .1 run scoreboard players get @s celetaken
execute if score @s celenova matches 1 run function under_pack:celestial_functions/sun/novadamage with storage celestial nova

#sunset
execute if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{celeset:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{celeset:1b}}}},scores={reset=1..}] run function under_pack:celestial_functions/sun/sunset

execute if score @s celeset matches 0.. if entity @s[team=uRed] store result storage celestial set.red double .05 run scoreboard players get @s celeset
execute if score @s celeset matches ..0 if entity @s[team=uRed] store result storage celestial set.red double -.05 run scoreboard players get @s celeset

execute if score @s celeset matches 0.. if entity @s[team=uBlue] store result storage celestial set.blue double .05 run scoreboard players get @s celeset
execute if score @s celeset matches ..0 if entity @s[team=uBlue] store result storage celestial set.blue double -.05 run scoreboard players get @s celeset

function under_pack:celestial_functions/sun/sunsetsize with storage celestial set

scoreboard players remove @s[scores={celeset=-19..}] celeset 1

scoreboard players reset @s celedamage

#effect give @s slowness 1 0 true
function under_pack:celestial_functions/sun/cooldown