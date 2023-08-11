## Whirl
# Kevcore 2023/06/05
# Speedrunning for tmr's ittems

# Assuming @s = entity hit

# WHIRL
tag @e[type=armor_stand] add player
tag @e[type=item] add player
tag @a add player
# Element?
# # 2: Ice | 27: Water | 29: Electric | 32: Fire | 31: Nature
# Fire
execute if entity @s[nbt={ActiveEffects:[{Id:32}]}] run effect give @e[distance=..5,tag=!player] hero_of_the_village 1 0 true
execute if entity @s[nbt={ActiveEffects:[{Id:32}]}] run execute as @e[tag=!player,distance=..5] at @s run function cmd:reactions/whirldmg
execute if entity @s[nbt={ActiveEffects:[{Id:32}]}] run execute at @e[tag=!player,distance=..5] run particle minecraft:dust 1 0.5 0 1 ~ ~0.5 ~ 0.2 0.5 0.2 0 20
# Ice
execute if entity @s[nbt={ActiveEffects:[{Id:2}]}] run effect give @e[distance=..5,tag=!player] slowness 1 0 true
execute if entity @s[nbt={ActiveEffects:[{Id:2}]}] run execute as @e[tag=!player,distance=..5] at @s run function cmd:reactions/whirldmg
execute if entity @s[nbt={ActiveEffects:[{Id:2}]}] run execute at @e[tag=!player,distance=..5] run particle minecraft:dust 0 1 1 1 ~ ~0.5 ~ 0.2 0.5 0.2 0 20
# Water
execute if entity @s[nbt={ActiveEffects:[{Id:27}]}] run effect give @e[distance=..5,tag=!player] unluck 1 0 true
execute if entity @s[nbt={ActiveEffects:[{Id:27}]}] run execute as @e[tag=!player,distance=..5] at @s run function cmd:reactions/whirldmg
execute if entity @s[nbt={ActiveEffects:[{Id:27}]}] run execute at @e[tag=!player,distance=..5] run particle minecraft:dust 0 0 1 1 ~ ~0.5 ~ 0.2 0.5 0.2 0 20
# Electric
execute if entity @s[nbt={ActiveEffects:[{Id:29}]}] run effect give @e[distance=..5,tag=!player] conduit_power 1 0 true
execute if entity @s[nbt={ActiveEffects:[{Id:29}]}] run execute as @e[tag=!player,distance=..5] at @s run function cmd:reactions/whirldmg
execute if entity @s[nbt={ActiveEffects:[{Id:29}]}] run execute at @e[tag=!player,distance=..5] run particle minecraft:dust 1 1 0 1 ~ ~0.5 ~ 0.2 0.5 0.2 0 20
# Nature
execute if entity @s[nbt={ActiveEffects:[{Id:31}]}] run effect give @e[distance=..5,tag=!player] bad_omen 1 0 true
execute if entity @s[nbt={ActiveEffects:[{Id:31}]}] run execute as @e[tag=!player,distance=..5] at @s run function cmd:reactions/whirldmg
execute if entity @s[nbt={ActiveEffects:[{Id:31}]}] run execute at @e[tag=!player,distance=..5] run particle minecraft:dust 0 0.5 0 1 ~ ~0.5 ~ 0.2 0.5 0.2 0 20

# Frozen
execute if entity @s[scores={noAITime=1..}] run scoreboard players add @e[distance=..5] noAITime 0
execute if entity @s[scores={noAITime=1..}] run execute as @e[type=!block_display,tag=!important,distance=..5,scores={noAITime=..19}] if entity @s[type=!#arrows] if entity @s[type=!armor_stand] run scoreboard players set @s[type=!item] noAITime 20
execute if entity @s[scores={noAITime=1..}] run execute as @e[type=!block_display,tag=!important,distance=..5] if entity @s[type=!#arrows] if entity @s[type=!armor_stand] run particle minecraft:dust 0.5 1 0.5 1 ~ ~0.5 ~ 0.2 0.5 0.2 0 20
execute if entity @s[scores={noAITime=1..}] run execute at @e[tag=!player,distance=..5] run particle minecraft:dust 0 2 2 2 ~ ~0.5 ~ 0.2 0.5 0.2 0 30
execute if entity @s[scores={noAITime=1..}] run scoreboard players add @s noAITime 5

# Burning
execute if entity @s[scores={burning=1..}] run execute as @e[type=!block_display,distance=..5] if entity @s[type=!#arrows] if entity @s[type=!armor_stand] run data merge entity @s[type=!item] {Fire:20s}
execute if entity @s[scores={burning=1..}] run execute at @e[tag=!player,distance=..5] run particle minecraft:dust 0.5 1 0.5 1 ~ ~0.5 ~ 0.2 0.5 0.2 0 20
execute if entity @s[scores={burning=1..}] run execute at @e[type=!block_display,distance=..5] if entity @s[type=!#arrows] if entity @s[tag=!player] run particle minecraft:dust 1 0 0 2 ~ ~0.5 ~ 0.2 0.5 0.2 0 100
execute if entity @s[scores={burning=1..}] run scoreboard players add @s burning 3

# Electrified
execute if entity @s[nbt={ActiveEffects:[{Id:33}]}] if entity @p[distance=..7,scores={ARem=0}] run damage @s 6 magic by @p
execute if entity @s[nbt={ActiveEffects:[{Id:33}]}] if entity @p[distance=..7,scores={ARem=1}] run damage @s 7.5 magic by @p
execute if entity @s[nbt={ActiveEffects:[{Id:33}]}] if entity @p[distance=..7,scores={ARem=2}] run damage @s 9 magic by @p
execute if entity @s[nbt={ActiveEffects:[{Id:33}]}] if entity @p[distance=..7,scores={ARem=3}] run damage @s 10.5 magic by @p
execute if entity @s[nbt={ActiveEffects:[{Id:33}]}] if entity @p[distance=..7,scores={ARem=4..}] run damage @s 12 magic by @p
execute if entity @s[nbt={ActiveEffects:[{Id:33}]}] run particle minecraft:dust 0.75 0.75 0 2 ~ ~0.5 ~ 0.2 0.5 0.2 0 100

# Superconduct
execute if entity @s[scores={superconduct=1..}] run execute as @e[tag=!player,distance=..5] run scoreboard players add @s superconduct 0
execute if entity @s[scores={superconduct=1..}] run execute as @e[tag=!player,distance=..5] run scoreboard players set @s[scores={superconduct=..24}] superconduct 25
execute if entity @s[scores={superconduct=1..}] run execute at @e[tag=!player,distance=..5] run particle minecraft:dust 0.5 1 0.5 1 ~ ~0.5 ~ 0.2 0.5 0.2 0 20
execute if entity @s[scores={superconduct=1..}] run execute at @e[tag=!player,distance=..5] run particle minecraft:dust 1 0 1 1 ~ ~0.5 ~ 0.2 0.5 0.2 0 20

# Nature target
execute if entity @s[scores={naturetarget=1..}] run function cmd:reactions/naturetarget