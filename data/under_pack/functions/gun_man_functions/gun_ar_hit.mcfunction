execute as @s[team=uRed] run damage @s 3 player_attack by @a[team=uBlue,scores={class=14},limit=1,sort=nearest]
execute as @s[team=uBlue] run damage @s 3 player_attack by @a[team=uRed,scores={class=14},limit=1,sort=nearest]