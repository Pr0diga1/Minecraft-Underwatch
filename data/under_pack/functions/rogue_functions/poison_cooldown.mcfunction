# Timer
scoreboard players remove @s ability4 1

# Texture pack display
item modify entity @s hotbar.2 under_pack:rogue/poison_cooldown

# Cooldown over
execute if score @s ability4 matches 1 run item replace entity @s hotbar.2 with crossbow{display:{Name:'{"text":"Poison Dart","color":"#BAFF30","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:2,posiondartrogue:1b,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:19,Amplifier:0b,Duration:200}],CustomPotionColor:16777210}},{},{}],Charged:1b} 1
