scoreboard players remove @s celenova 1
scoreboard players operation @s celedust = @s celetaken
scoreboard players operation @s celedust /= 20 constant
scoreboard players operation @s celedust *= -1 constant
scoreboard players operation @s celedust += 10 constant
execute if score @s celedust matches 10.. run scoreboard players set @s celedust 9

execute if entity @s[team=uRed] store result storage celestial nova.red double 0.1 run scoreboard players get @s celedust
execute if entity @s[team=uBlue] store result storage celestial nova.blue double 0.1 run scoreboard players get @s celedust

$execute at @s[team=uRed] run particle dust{color:[1.000,$(red),0.000],scale:1} ~ ~ ~ .1 .8 .1 1 5 normal
$execute at @s[team=uBlue] run particle dust{color:[1.000,$(blue),0.000],scale:1} ~ ~ ~ .1 .8 .1 1 5 normal