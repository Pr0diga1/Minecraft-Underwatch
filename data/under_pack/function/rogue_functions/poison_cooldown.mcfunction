# Timer
scoreboard players remove @s ability4 1

# Texture pack display
item modify entity @s hotbar.2 under_pack:rogue/poison_cooldown

# Cooldown over
execute if score @s ability4 matches 1 run item replace entity @s hotbar.2 with crossbow[custom_name='{"bold":true,"color":"#ff0000","italic":false,"text":"Kill Shot"}',unbreakable={show_in_tooltip:false},custom_model_data=2,custom_data={posiondartrogue:1b},charged_projectiles=[{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1}],custom_color:16777210},"minecraft:custom_data":{roguedart:1b}}}]] 1
