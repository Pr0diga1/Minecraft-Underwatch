execute if entity @s unless entity @e[tag=microride,tag=blue] run summon bat ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999,show_particles:0b}],Tags:["microride","blue"]}
ride @s mount @e[tag=microride,limit=1,sort=nearest,tag=blue]
execute if entity @s as @a[limit=1,sort=nearest,nbt={Inventory:[{components:{"minecraft:custom_data":{micropick:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{micropick:1b}}}},scores={reset=1..}] at @s run function under_pack:microwave_functions/pickup_blue
execute at @a[tag=grabberblue,limit=1,sort=nearest] run tp @e[tag=microride,tag=blue] ~ ~2 ~
