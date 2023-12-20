effect give @s resistance 1 255 false
execute at @s run playsound block.anvil.land master @s ~ ~ ~
execute as @s at @s run summon creeper ^ ^1 ^2 {ExplosionRadius:6b,Fuse:0}
scoreboard players add @s ability2 45