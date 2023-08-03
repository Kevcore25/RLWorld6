particle firework ~ ~0.9 ~ 0.3 0.3 0.3 0 2

# LIGHTNING (Test)
# RADIATION
execute as @s[nbt={ActiveEffects:[{Id:29},{Id:32}]}] at @s[type=!armor_stand] run function cmd:reactions/radiation
# SUPERCONDUCT
execute as @s[nbt={ActiveEffects:[{Id:29},{Id:2}]}] at @s[type=!armor_stand] run function cmd:reactions/superconduct
# ELECTRIVCIED
execute at @a[tag=!spectating] as @e[distance=..24,nbt={ActiveEffects:[{Id:29},{Id:27}]}] at @s[type=!armor_stand] run function cmd:reactions/electrified
