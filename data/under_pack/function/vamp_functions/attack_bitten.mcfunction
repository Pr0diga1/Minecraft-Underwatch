#do damage
execute at @s as @s[team=uRed] run damage @s 7 player_attack by @a[team=uBlue,scores={class=19},limit=1,sort=nearest]
execute at @s as @s[team=uBlue] run damage @s 7 player_attack by @a[team=uRed,scores={class=19},limit=1,sort=nearest]

execute as @s[team=uRed] run effect give @a[team=uBlue,scores={class=19},limit=1,sort=nearest] instant_health
execute as @s[team=uBlue] run effect give @a[team=uRed,scores={class=19},limit=1,sort=nearest] instant_health

execute as @s[team=uRed] run playsound entity.arrow.hit_player master @a[team=uBlue,scores={class=19},limit=1,sort=nearest]
execute as @s[team=uBlue] run playsound entity.arrow.hit_player master @a[team=uRed,scores={class=19},limit=1,sort=nearest]