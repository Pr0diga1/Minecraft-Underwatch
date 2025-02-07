$execute at @s[team=uRed] as @a[team=uBlue,distance=..6] run damage @s $(x)
$execute at @s[team=uBlue] as @a[team=uRed,distance=..6] run damage @s $(x)
execute as @s run playsound minecraft:entity.generic.explode master @a[distance=..8] ~ ~ ~ 0.4 2