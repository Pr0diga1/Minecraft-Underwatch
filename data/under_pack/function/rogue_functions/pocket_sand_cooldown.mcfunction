# Timer
scoreboard players remove @s ability2 1

# Texture pack display
item modify entity @s hotbar.3 under_pack:rogue/sand_cooldown

# Cooldown over
execute if score @s ability2 matches 1 run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#A8A85D","italic":false,"text":"Pocket Sand"}',unbreakable={},custom_model_data=31,custom_data={pocketSand:1b}] 1