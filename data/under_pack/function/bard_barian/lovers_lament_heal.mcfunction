effect give @s instant_health 1 0 true
damage @s 2 generic
execute if entity @s[tag=uBlue] run scoreboard players reset @p[team=uBlue,scores={class=17}] damageTaken
execute if entity @s[tag=uRed] run scoreboard players reset @p[team=uRed,scores={class=17}] damageTaken