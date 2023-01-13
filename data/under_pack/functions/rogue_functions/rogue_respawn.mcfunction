# Reset death scoreboard
scoreboard players reset @a uDeaths

# Reset other scoreboards
scoreboard players reset @s ability1
scoreboard players reset @s ability2

# Reset tags
tag @s remove cloak

## Re give weapons
# Cloak
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Invisibility Cloak","color":"#555755","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:30,cloak:1b} 1
# Pocket sand
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Pocket Sand","color":"#A8A85D","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:31,pocketSand:1b} 1
