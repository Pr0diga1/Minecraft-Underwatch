#damage
execute as @s[team=uRed] run damage @s 8 player_attack by @a[scores={class=3},team=uBlue,limit=1,sort=nearest]
execute as @s[team=uBlue] run damage @s 8 player_attack by @a[scores={class=3},team=uRed,limit=1,sort=nearest]
#add the tag
tag @s add hitbyturret
#end the raycast
scoreboard players set hit engineerTurretEye 1