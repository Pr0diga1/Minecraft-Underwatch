effect give @s hero_of_the_village 8 0 true
attribute @s max_health base set 26
attribute @s armor base set 7
attribute @s armor_toughness base set 4
scoreboard players set @s cyborgpreserve 2
scoreboard players add @s cyborgcap 320
experience add @s 320 points
execute at @s run playsound minecraft:entity.armadillo.brush master @a ~ ~ ~ 1 0.5
item replace entity @s armor.head with turtle_helmet[unbreakable={show_in_tooltip:false}]