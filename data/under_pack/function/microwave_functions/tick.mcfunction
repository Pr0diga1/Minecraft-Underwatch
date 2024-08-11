#summoning the no move entity
execute if entity @s[team=uRed] unless entity @e[tag=microride,tag=red] run summon bat ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999,show_particles:0b}],Tags:["microride","red"]}
execute if entity @s[team=uBlue] unless entity @e[tag=microride,tag=blue] run summon bat ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999,show_particles:0b}],Tags:["microride","blue"]}

#riding it
ride @s[team=uRed] mount @e[tag=microride,limit=1,sort=nearest,tag=red]
ride @s[team=uBlue] mount @e[tag=microride,limit=1,sort=nearest,tag=blue]

#pickup microwave carrot on a stick
execute as @a[nbt=!{Inventory:[{id:"minecraft:diamond_chestplate",Slot:102b,components:{"minecraft:custom_data":{wave:1b}}}]},distance=..3] run item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name='{"color":"gray","text":"Pickup Microwave"}',custom_model_data=27,custom_data={micropick:1b}] 1
execute as @a[distance=4..] run item replace entity @s hotbar.8 with air
execute if entity @s[team=uRed] as @a[limit=1,sort=nearest,nbt={Inventory:[{components:{"minecraft:custom_data":{micropick:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{micropick:1b}}}},scores={reset=1..}] at @s run function under_pack:microwave_functions/pickup_red
execute if entity @s[team=uBlue] as @a[limit=1,sort=nearest,nbt={Inventory:[{components:{"minecraft:custom_data":{micropick:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{micropick:1b}}}},scores={reset=1..}] at @s run function under_pack:microwave_functions/pickup_blue

#pickup teleporting
tp @e[tag=microride,tag=red] @a[tag=grabberred,limit=1,sort=nearest]
tp @e[tag=microride,tag=blue] @a[tag=grabberblue,limit=1,sort=nearest]
