# Timer
scoreboard players remove @s ability1 1

# Texture pack display
item modify entity @s hotbar.1 under_pack:rogue/cloak_cooldown

# Cooldown over
execute if score @s ability1 matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Invisibility Cloak","color":"#555755","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:30,cloak:1b} 1
