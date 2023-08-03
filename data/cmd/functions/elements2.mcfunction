## 2nd Generation of Elements
# We've done a playthrough with Timings V2 on a PaperMC server, and according to the results, 2nd gen is around 2x better than 1st gen!
# Kevcore 07/03/2023

# Nope
execute if entity @s[gamemode=spectator] run return 0
execute if entity @s[tag=spectator] run return 0

# COLD: (Slowness)
execute if entity @s[nbt={ActiveEffects:[{Id:2}]}] at @s[type=!armor_stand,tag=!spectating] run particle snowflake ~ ~0.9 ~ 0.3 0.3 0.3 0 3
# HOT: (Fire res)
execute if entity @s[nbt={ActiveEffects:[{Id:32}]}] at @s[type=!armor_stand,tag=!spectating] run particle block fire ~ ~0.9 ~ 0.3 0.3 0.3 0 5
# WET (unluick):
execute if entity @s[nbt={ActiveEffects:[{Id:27}]}] at @s[type=!armor_stand,tag=!spectating] run particle block water ~ ~0.9 ~ 0.3 0.3 0.3 0 4
# NATURE (badomen):
execute if entity @s[nbt={ActiveEffects:[{Id:31}]}] at @s[type=!armor_stand,tag=!spectating] run particle block azalea_leaves ~ ~0.9 ~ 0.3 0.3 0.3 0 4


execute at @s[scores={naturetarget=1..}] run particle minecraft:glow_squid_ink ~ ~1 ~ ~ ~ ~ 0 0
scoreboard players remove @s[scores={naturetarget=1..}] naturetarget 1 
scoreboard players remove @s[scores={naturetargetCD=1..}] naturetargetCD 1 

# BURNING
execute if entity @s[nbt={ActiveEffects:[{Id:31},{Id:32}]}] at @s[type=!armor_stand] run function cmd:reactions/burning
# OVERGROWTH
execute if entity @s[nbt={ActiveEffects:[{Id:31},{Id:29}]}] at @s[type=!armor_stand] run function cmd:reactions/charred
# BLOOM
execute if entity @s[tag=!natureCore,nbt={ActiveEffects:[{Id:31},{Id:27}]}] at @s[type=!armor_stand] run function cmd:reactions/bloom
# CRISP
execute if entity @s[nbt={ActiveEffects:[{Id:31},{Id:2}]}] at @s[type=!armor_stand] run function cmd:reactions/crisp

execute at @s if block ~ ~ ~ lava run function cmd:reactions/melt

# LIGHTNING (Test)
# execute if entity @s[nbt={ActiveEffects:[{Id:29}]}] at @s[type=!armor_stand] run function cmd:reactions/electric
execute if entity @s[nbt={ActiveEffects:[{Id:29}]}] at @s[type=!armor_stand] run particle firework ~ ~0.9 ~ 0.3 0.3 0.3 0 1
# RADIATION
execute if entity @s[nbt={ActiveEffects:[{Id:29},{Id:32}]}] at @s[type=!armor_stand] run function cmd:reactions/radiation
# SUPERCONDUCT
execute if entity @s[scores={superconduct=1..}] run scoreboard players remove @s superconduct 1
execute if entity @s[scores={superconduct=1..}] at @s[type=!armor_stand] run particle electric_spark ~ ~0.9 ~ 0.3 0.3 0.3 0 20
execute if entity @s[nbt={ActiveEffects:[{Id:29},{Id:2}]}] at @s[type=!armor_stand] as @e[distance=..4,type=!player,tag=!ReactionText] run function cmd:reactions/superconduct

#execute as @a[tag=!spectating,scores={superconduct=1..}] run attribute @s generic.armor base set -10

execute if entity @s[scores={burning=1..}] at @s[type=!armor_stand] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 0 20



# electriified
execute if entity @s[nbt={ActiveEffects:[{Id:29},{Id:27}]}] at @s[type=!armor_stand] run function cmd:reactions/electrified


execute if entity @s[nbt={ActiveEffects:[{Id:15}]}] at @s[type=!armor_stand] run particle enchanted_hit ~ ~0.9 ~ 0.3 0.3 0.3 0 10

scoreboard players remove @a[scores={shields=501..}] shields 1


# execute at @a[tag=!spectating] as @e[type=!player,distance=..24,nbt={ActiveEffects:[{Id:32}]}] at @s if block ~ ~ ~ water run effect give @s wither 1 10
# execute at @a[tag=!spectating] as @e[type=!player,distance=..24,nbt={ActiveEffects:[{Id:32}]}] at @s if block ~ ~ ~ water run effect clear @s hero_of_the_village
# execute at @a[tag=!spectating] as @e[type=!player,distance=..24,nbt={ActiveEffects:[{Id:32}]}] at @s if block ~ ~ ~ powder_snow run effect give @s wither 1 1
# execute at @a[tag=!spectating] as @e[type=!player,distance=..24,nbt={ActiveEffects:[{Id:32}]}] at @s if block ~ ~ ~ powder_snow run effect clear @s hero_of_the_village

# HOT AND COLD (MELT) 
# Use function "cmd:reactions/hotandcold" for legacy Melt/Harden. Note that this is buggy (Harden does not have ICD and does not remove fire)
execute if entity @s[nbt={ActiveEffects:[{Id:32},{Id:2}]}] at @s run function cmd:reactions/melt
execute if entity @s[nbt={ActiveEffects:[{Id:32},{Id:27}]}] at @s run function cmd:reactions/harden

# FROZEN
execute if entity @s[nbt={ActiveEffects:[{Id:2}]},tag=!important] at @s[nbt={ActiveEffects:[{Id:27}]}] run function cmd:reactions/freeze

execute if entity @s[scores={noAITime=1..,staggeredtime=30..}] at @s run function cmd:reactions/shattered
