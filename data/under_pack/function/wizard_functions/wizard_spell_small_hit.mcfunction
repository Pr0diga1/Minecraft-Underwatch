#marks that they have recently been hit by a spell
execute as @s[team=uRed] run scoreboard players set @s wizardBlueHit 10
execute as @s[team=uBlue] run scoreboard players set @s wizardRedHit 10

#do damage
execute at @s as @s[team=uRed] run damage @s 5 arrow by @a[team=uBlue,scores={class=10},limit=1,sort=nearest]
execute at @s as @s[team=uBlue] run damage @s 5 arrow by @a[team=uRed,scores={class=10},limit=1,sort=nearest]