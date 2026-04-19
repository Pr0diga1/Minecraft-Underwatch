#run color ticks
execute as @s[team=uRed] run function under_pack:engineer_functions/engineer_tick_red
execute as @s[team=uBlue] run function under_pack:engineer_functions/engineer_tick_blue

#healies
#function under_pack:engineer_functions/engineer_heal

execute if score @s engineerhealbuffer matches 1.. run scoreboard players remove @s engineerhealbuffer 1


experience set @s 100 levels

#eyes
#viagra
item replace entity @s[scores={ability5=0}] hotbar.3 with bricks[consumable={consume_seconds:10000,animation:"spear"},custom_name={"color":"dark_red","text":"Viagra"},custom_data={enginedrug:1b},item_model="ominous_bottle"] 1

#wall
item replace entity @s[scores={ability1=0}] hotbar.4 with bricks[consumable={consume_seconds:10000,animation:"brush"},custom_name={"color":"gray","text":"Wall"},custom_data={enginewall:1b}] 1

#nerf gun
item replace entity @s[scores={ability7=0}] hotbar.6 with crossbow[charged_projectiles=[{id:"minecraft:arrow",count:1}],unbreakable={},custom_name={"color":"blue","text":"Nerf Gun"},enchantment_glint_override=false,enchantments={"under_pack:engi":1}] 1

#wall stuff
execute if score @s engineerWallBuffer matches 1.. run scoreboard players remove @s engineerWallBuffer 1
execute if score @s engineerWallBuffer matches 0 run scoreboard players reset @s engineerWallEye 
execute if score @s engineerWallBuffer matches 0 if score @s ability1 matches 0 run scoreboard players set @s ability1 121
execute if score @s ability1 matches 1 run item replace entity @s hotbar.4 with bricks[consumable={consume_seconds:10000,animation:"brush"},custom_name={"color":"gray","text":"Wall"},custom_data={enginewall:1b}] 1
execute if score @s ability1 matches 1..121 run scoreboard players remove @s ability1 1

#Viagra stuff
execute if score @s engineerViagraTimer = @s engineerViagraBuffer if score @s engineerViagraTimer matches 1.. run function under_pack:engineer_functions/engineer_drug_cast
execute if score @s engineerViagraTimer = @s engineerViagraBuffer run scoreboard players set @s engineerViagraTimer 0
scoreboard players operation @s engineerViagraBuffer = @s engineerViagraTimer

#give red particles to people with viagra
##wd-40
execute if entity @s[nbt={Inventory:[{Slot:5b,components:{"minecraft:custom_data":{enginewd:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{enginewd:1b}}}},scores={reset=1..}] at @s run function under_pack:engineer_functions/engineer_wd
execute as @s[nbt={active_effects:[{id:"minecraft:speed",amplifier:30b,duration:16}]}] run effect clear @s speed

##magnet stuff
#runs the magnet tick

#magnet timer
execute as @a[scores={engineermagtimer=1}] run function under_pack:engineer_functions/timer_reset
execute as @a[scores={engineermagtimer=1..}] run scoreboard players remove @s engineermagtimer 1

#magnet reset detection
execute if entity @s[nbt={Inventory:[{Slot:7b,components:{"minecraft:custom_data":{enginemag:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{enginemag:1b}}}},scores={reset=1..}] as @s run function under_pack:engineer_functions/engineer_magnet_reset

function under_pack:engineer_functions/engineer_cooldown


scoreboard players reset @s reset