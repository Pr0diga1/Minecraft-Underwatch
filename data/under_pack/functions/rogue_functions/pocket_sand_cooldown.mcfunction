# Timer
scoreboard players remove @s ability2 1

# Texture pack display
item modify entity @s hotbar.3 under_pack:rogue/sand_cooldown

# Cooldown over
execute if score @s ability2 matches 1 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Pocket Sand","color":"#A8A85D","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:31,pocketSand:1b} 1
