summon husk ~ ~ ~ {Silent:1b,NoAI:1b,Health:100f,Tags:["test_dummy"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:enchantments":{levels:{"debug:dummy_enchant":1},show_in_tooltip:false},"minecraft:enchantment_glint_override":true,"minecraft:attribute_modifiers":{modifiers:[{id:"armor",type:"generic.armor",amount:-3,operation:"add_value",slot:"any"}],show_in_tooltip:false}}}],attributes:[{id:"minecraft:generic.max_health",base:100}]}
bossbar add debug:test_dummy "Test Dummy"
bossbar set debug:test_dummy max 100
bossbar set debug:test_dummy players @a
