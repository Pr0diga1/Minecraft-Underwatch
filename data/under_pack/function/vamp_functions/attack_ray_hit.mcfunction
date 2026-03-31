#do damage
execute at @s as @s[team=uRed] run damage @s 5.5 player_attack by @a[team=uBlue,scores={class=19},limit=1,sort=nearest]
execute at @s as @s[team=uBlue] run damage @s 5.5 player_attack by @a[team=uRed,scores={class=19},limit=1,sort=nearest]