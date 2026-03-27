schedule function under_pack:dark_soul_functions/give_sword 1t

item replace entity @s armor.chest with leather_chestplate[unbreakable={},attribute_modifiers=[{id:"scale",type:"scale",amount:0.3,operation:"add_value",slot:"any"},{id:"armor",type:"armor",amount:100,operation:"add_value"}],dyed_color=15128132,enchantments={"under_pack:dark_soul/parry":1}] 1
tag @s add parrying

advancement revoke @s only under_pack:dark_soul/sword_block