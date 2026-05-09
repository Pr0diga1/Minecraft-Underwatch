#damage
execute as @s[team=uRed] run damage @s 6 player_attack by @a[team=uBlue,limit=1,scores={class=11}]
execute as @s[team=uBlue] run damage @s 6 player_attack by @a[team=uRed,limit=1,scores={class=11}]

#sound
execute as @s[team=uRed] as @a[team=uBlue,limit=1,scores={class=11}] at @s run playsound entity.arrow.hit_player master @s
execute as @s[team=uBlue] as @a[team=uRed,limit=1,scores={class=11}] at @s run playsound entity.arrow.hit_player master @s