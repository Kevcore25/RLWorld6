execute at @a as @e[distance=..24,nbt={ActiveEffects:[{Id:29b}]}] at @s[type=!armor_stand] run particle firework ~ ~0.9 ~ 0.3 0.3 0.3 0 1
# superconduct
execute as @e[nbt={ActiveEffects:[{Id:29b},{Id:2b}]}] at @s[type=!armor_stand] if entity @a[distance=..24] run effect give @s wither 1 255 true
execute as @e[nbt={ActiveEffects:[{Id:29b},{Id:2b}]}] at @s[type=!armor_stand] if entity @a[distance=..24] run particle electric_spark ~ ~0.9 ~ 0.3 0.3 0.3 0 20
execute as @e[nbt={ActiveEffects:[{Id:29b},{Id:27b}]}] at @s[type=!armor_stand] if entity @a[distance=..24] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Superconduct","color":"#FF00FF"}',Tags:[ReactionText]}

# electric blast
# execute as @e[nbt={ActiveEffects:[{Id:29b},{Id:32b}]}] at @s[type=!armor_stand] if entity @a[distance=..24] run summon creeper ~ ~ ~ {ExplosionRadius:2,Fuse:0,CustomName:'[{"text":"Electricial Blast"}]'}
# execute as @e[nbt={ActiveEffects:[{Id:29b},{Id:32b}]}] at @s[type=!armor_stand] if entity @a[distance=..24] run effect give @s wither 2 255 true
# execute as @e[nbt={ActiveEffects:[{Id:29b},{Id:32b}]}] at @s[type=!armor_stand] if entity @a[distance=..24] run effect clear @s conduit_power
# electriified
execute as @e[nbt={ActiveEffects:[{Id:29b},{Id:27b}]}] at @s[type=!armor_stand] if entity @a[distance=..24] run effect give @s wither 4 255 true
execute as @e[nbt={ActiveEffects:[{Id:29b},{Id:27b}]}] at @s[type=!armor_stand] if entity @a[distance=..24] run effect give @s blindness 4 2 true
execute as @e[nbt={ActiveEffects:[{Id:29b},{Id:27b}]}] at @s[type=!armor_stand] if entity @a[distance=..24] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Electrified","color":"#FFFF00"}',Tags:[ReactionText]}
execute as @e[nbt={ActiveEffects:[{Id:29b},{Id:27b}]}] at @s[type=!armor_stand] if entity @a[distance=..24] run effect clear @s conduit_power

