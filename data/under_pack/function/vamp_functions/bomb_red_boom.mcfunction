execute at @e[tag=vampguy,tag=red] as @a[team=uBlue,distance=..3] run damage @s 5 player_attack by @a[team=uRed,scores={class=19},limit=1]
execute at @e[tag=vampguy,tag=red] run particle dust{color:[0.541,0.000,0.000],scale:1} ~ ~ ~ 1.5 1.5 1.5 1 25 normal
execute at @e[tag=vampguy,tag=red] run particle crimson_spore ~ ~ ~ 1.5 1.5 1.5 1 25 normal
scoreboard players set @a[team=uRed,scores={class=19}] ability2 200
item replace entity @a[team=uRed,scores={class=19}] hotbar.2 with barrier[custom_name={"text":"Blood Bomb on cooldown"}] 10
kill @e[tag=vampguy,tag=red]
kill @e[tag=vamplode,tag=red]