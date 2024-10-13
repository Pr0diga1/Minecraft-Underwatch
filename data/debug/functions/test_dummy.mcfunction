summon minecraft:warden ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["test_dummy"],Health:20f,Attributes:[{Name:generic.max_health,Base:20}]}
bossbar add debug:test_dummy "Test Dummy"
bossbar set debug:test_dummy max 20
bossbar set debug:test_dummy players @a
