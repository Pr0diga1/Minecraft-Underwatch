#indicate player was hit
scoreboard players set hit cyborgtimer 1
#damage
execute as @s[team=uRed] run damage @s 2.1 arrow by @a[team=uBlue,scores={class=15},limit=1,sort=nearest]
execute as @s[team=uBlue] run damage @s 2.1 arrow by @a[team=uRed,scores={class=15},limit=1,sort=nearest]
