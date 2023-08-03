particle block azalea_leaves ~ ~0.9 ~ 0.3 0.3 0.3 0 4


# BURNING
execute as @s[nbt={ActiveEffects:[{Id:31},{Id:32}]}] at @s[type=!armor_stand] run function cmd:reactions/burning
# OVERGROWTH
execute as @s[nbt={ActiveEffects:[{Id:31},{Id:29}]}] at @s[type=!armor_stand] run function cmd:reactions/charred
# BLOOM
execute as @s[tag=!natureCore,nbt={ActiveEffects:[{Id:31},{Id:27}]}] at @s[type=!armor_stand] run function cmd:reactions/bloom
# CRISP
execute as @s[nbt={ActiveEffects:[{Id:31},{Id:2}]}] at @s[type=!armor_stand] run function cmd:reactions/crisp