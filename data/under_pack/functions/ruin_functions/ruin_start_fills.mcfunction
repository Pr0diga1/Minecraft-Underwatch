##Red
#barrior box
fill 18 98 528 26 91 520 barrier hollow

#floor
fill 25 92 527 19 92 521 minecraft:stripped_spruce_log[axis=x]
fill 19 92 526 25 92 522 minecraft:stripped_spruce_log[axis=z]
fill 20 92 526 24 92 522 minecraft:barrier

setblock 25 92 520 stripped_spruce_log[axis=z]
setblock 26 92 521 stripped_spruce_log[axis=x]
setblock 26 92 527 stripped_spruce_log[axis=x]
setblock 25 92 528 stripped_spruce_log[axis=z]
setblock 19 92 528 stripped_spruce_log[axis=z]
setblock 18 92 527 stripped_spruce_log[axis=x]
setblock 18 92 521 stripped_spruce_log[axis=x]
setblock 19 92 520 stripped_spruce_log[axis=z]

#board
fill 25 93 521 25 95 521 minecraft:spruce_log
fill 25 93 527 25 95 527 spruce_log
fill 25 95 526 25 94 522 minecraft:spruce_planks

fill 19 95 527 19 93 527 spruce_log
fill 19 93 521 19 95 521 spruce_log
fill 19 95 526 19 94 522 spruce_planks

setblock 25 96 521 spruce_slab
setblock 25 96 527 spruce_slab

setblock 19 96 521 spruce_slab
setblock 19 96 527 spruce_slab

##signs
#supports
setblock 20 95 527 birch_wall_sign[facing=east]{Color:"yellow",GlowingText:1b,Text1:'{"text":"------------------"}',Text2:'{"text":"Support"}',Text4:'{"text":"------------------"}'}
setblock 20 95 526 birch_wall_sign[facing=east]{Text2:'{"text":"Scientist","clickEvent":{"action":"run_command","value":"/trigger scientist"}}'} replace
setblock 20 95 525 birch_wall_sign[facing=east]{Text2:'{"text":"Alchemist","clickEvent":{"action":"run_command","value":"/trigger alchemist"}}'} replace
setblock 20 95 524 birch_wall_sign[facing=east]{Text2:'{"text":"Engineer","clickEvent":{"action":"run_command","value":"/trigger engineer"}}'} replace

#dps
setblock 24 95 521 birch_wall_sign[facing=west]{Color:"red",GlowingText:1b,Text1:'{"text":"------------------"}',Text2:'{"text":"DPS"}',Text4:'{"text":"------------------"}'}
setblock 24 95 522 birch_wall_sign[facing=west]{Text2:'{"text":"Archer","clickEvent":{"action":"run_command","value":"/trigger archer"}}'} replace
setblock 24 95 523 birch_wall_sign[facing=west]{Text2:'{"text":"Lumberjack","clickEvent":{"action":"run_command","value":"/trigger lumberjack"}}'} replace
setblock 24 95 524 birch_wall_sign[facing=west]{Text2:'{"text":"Ninja","clickEvent":{"action":"run_command","value":"/trigger ninja"}}'} replace
setblock 24 95 525 birch_wall_sign[facing=west]{Text2:'{"text":"Paladin","clickEvent":{"action":"run_command","value":"/trigger paladin"}}'} replace
setblock 24 95 526 birch_wall_sign[facing=west]{Text2:'{"text":"Rogue","clickEvent":{"action":"run_command","value":"/trigger rogue"}}'} replace
setblock 24 94 522 birch_wall_sign[facing=west]{Text2:'{"text":"Wizard","clickEvent":{"action":"run_command","value":"/trigger wizard"}}'} replace

##Blue
#barrier box
fill 18 91 574 26 98 582 barrier hollow

#floor
fill 19 92 581 25 92 575 minecraft:stripped_spruce_log[axis=x]
fill 25 92 580 19 92 576 minecraft:stripped_spruce_log[axis=z]
fill 20 92 576 24 92 580 barrier

setblock 25 92 582 stripped_spruce_log[axis=z]
setblock 26 92 581 stripped_spruce_log[axis=x]
setblock 26 92 575 stripped_spruce_log[axis=x]
setblock 25 92 574 stripped_spruce_log[axis=z]
setblock 19 92 574 stripped_spruce_log[axis=z]
setblock 18 92 575 stripped_spruce_log[axis=x]
setblock 18 92 581 stripped_spruce_log[axis=x]
setblock 19 92 582 stripped_spruce_log[axis=z]

#board
fill 25 93 575 25 95 575 minecraft:spruce_log
fill 25 95 581 25 93 581 minecraft:spruce_log
fill 25 94 580 25 95 576 minecraft:spruce_planks

setblock 25 96 575 minecraft:spruce_slab
setblock 25 96 581 minecraft:spruce_slab

fill 19 93 581 19 95 581 minecraft:spruce_log
fill 19 95 575 19 93 575 minecraft:spruce_log
fill 19 94 576 19 95 580 minecraft:spruce_planks

setblock 19 96 581 minecraft:spruce_slab
setblock 19 96 575 minecraft:spruce_slab

##signs
#support
setblock 20 95 581 birch_wall_sign[facing=east]{Color:"yellow",GlowingText:1b,Text1:'{"text":"------------------"}',Text2:'{"text":"Support"}',Text4:'{"text":"------------------"}'}
setblock 20 95 580 birch_wall_sign[facing=east]{Text2:'{"text":"Scientist","clickEvent":{"action":"run_command","value":"/trigger scientist"}}'} replace
setblock 20 95 579 birch_wall_sign[facing=east]{Text2:'{"text":"Alchemist","clickEvent":{"action":"run_command","value":"/trigger alchemist"}}'} replace
setblock 20 95 578 birch_wall_sign[facing=east]{Text2:'{"text":"Engineer","clickEvent":{"action":"run_command","value":"/trigger engineer"}}'} replace

#dps
setblock 24 95 575 birch_wall_sign[facing=west]{Color:"red",GlowingText:1b,Text1:'{"text":"------------------"}',Text2:'{"text":"DPS"}',Text4:'{"text":"------------------"}'}
setblock 24 95 576 birch_wall_sign[facing=west]{Text2:'{"text":"Archer","clickEvent":{"action":"run_command","value":"/trigger archer"}}'} replace
setblock 24 95 577 birch_wall_sign[facing=west]{Text2:'{"text":"Lumberjack","clickEvent":{"action":"run_command","value":"/trigger lumberjack"}}'} replace
setblock 24 95 578 birch_wall_sign[facing=west]{Text2:'{"text":"Ninja","clickEvent":{"action":"run_command","value":"/trigger ninja"}}'} replace
setblock 24 95 579 birch_wall_sign[facing=west]{Text2:'{"text":"Paladin","clickEvent":{"action":"run_command","value":"/trigger paladin"}}'} replace
setblock 24 95 580 birch_wall_sign[facing=west]{Text2:'{"text":"Rogue","clickEvent":{"action":"run_command","value":"/trigger rogue"}}'} replace
setblock 24 94 576 birch_wall_sign[facing=west]{Text2:'{"text":"Wizard","clickEvent":{"action":"run_command","value":"/trigger wizard"}}'} replace

fill 25 96 551 19 92 551 minecraft:polished_andesite