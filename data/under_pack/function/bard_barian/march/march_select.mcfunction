scoreboard players reset @s smarch
scoreboard players enable @s smarch
item replace entity @s hotbar.2 with book[enchantments={"loyalty":1},consumable={consume_seconds:0,animation:"none",sound:"block.amethyst_cluster.place",has_consume_particles:false},custom_data={bard_book:true},custom_name={"bold":true,"color":"yellow","text":"Book of Songs"}] 1
scoreboard players set @s ability3 1