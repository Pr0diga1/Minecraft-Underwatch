#confirm who will recieve viagra boosts
execute as @s[team=uRed] as @a[tag=redViagraTarget] run effect give @s speed 5 4 true
execute as @s[team=uBlue] as @a[tag=blueViagraTarget] run effect give @s speed 5 4 true
execute as @s[team=uRed] as @a[tag=redViagraTarget] run title @s title {"text":"Viagra'd","color": "red"}
execute as @s[team=uBlue] as @a[tag=blueViagraTarget] run title @s title {"text":"Viagra'd","color": "red"}

#cooldown
execute as @s[team=uRed] if entity @a[tag=redViagraTarget] run scoreboard players set @s ability5 0
execute as @s[team=uBlue] if entity @a[tag=blueViagraTarget] run scoreboard players set @s ability5 0

#clear the old tag
execute as @s[team=uRed] run tag @a remove redViagraTarget
execute as @s[team=uBlue] run tag @a remove blueViagraTarget