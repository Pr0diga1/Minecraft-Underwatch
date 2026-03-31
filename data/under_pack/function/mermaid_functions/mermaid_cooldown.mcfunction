#dive
item modify entity @s hotbar.2 under_pack:mermaid/dive
execute if score @s ability4 matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name={"color":"aqua","text":"Dive"},unbreakable={},custom_data={mermaiddive:1b},item_model="water_bucket"] 1
execute if score @s ability4 matches 1.. run scoreboard players remove @s ability4 1

#burst
execute if score @s mermaidburst matches 0 run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"3","color":"yellow"}]
execute if score @s mermaidburst matches 1 run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"2","color":"yellow"}]
execute if score @s mermaidburst matches 2 run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"1","color":"yellow"}]
execute if score @s mermaidburst matches 3.. run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"0","color":"yellow"}]