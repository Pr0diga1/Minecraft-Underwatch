#do damage
execute at @s as @s[team=uRed] unless entity @a[team=uBlue,scores={class=19},tag=blackflash] run return run damage @s 5.5 player_attack by @a[team=uBlue,scores={class=19},limit=1,sort=nearest]
execute at @s as @s[team=uBlue] unless entity @a[team=uRed,scores={class=19},tag=blackflash] run return run damage @s 5.5 player_attack by @a[team=uRed,scores={class=19},limit=1,sort=nearest]

tag @s add vamphitbyray

execute at @s run particle flash{color:[1.000,0.000,0.000,1.00]} ~ ~0.8 ~ 0.3 0.6 0.3 0 10
execute at @s run particle flash{color:[0.000,0.000,0.000,1.00]} ~ ~0.8 ~ 0.3 0.6 0.3 0 10
execute at @s run particle raid_omen ~ ~0.8 ~ 0.3 0.6 0.3 0 50
execute at @s run particle smoke ~ ~0.8 ~ 0.3 0.6 0.3 0 80

execute at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 0.5
execute at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.5 2

execute at @s as @s[team=uRed] run damage @s 11 player_attack by @a[team=uBlue,scores={class=19},limit=1,sort=nearest]
execute at @s as @s[team=uBlue] run damage @s 11 player_attack by @a[team=uRed,scores={class=19},limit=1,sort=nearest]
