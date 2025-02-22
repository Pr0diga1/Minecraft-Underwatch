$damage @p[tag=sharing] $(amount) under_pack:vulnerable
effect give @s regeneration 2 5 false
tag @s add share_heal
tag @p[tag=sharing] remove sharing