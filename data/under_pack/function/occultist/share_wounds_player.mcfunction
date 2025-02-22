$damage @s $(amount) under_pack:vulnerable
effect give @p[tag=sharing] regeneration 2 5 false
tag @p[tag=sharing] add share_heal
tag @p[tag=sharing] remove sharing