
# ice bloom
execute at @a[tag=!spectating] as @e[type=slime,tag=natureCore,distance=..7] at @s run effect give @s bad_omen 1 0 true

execute as @e[type=slime,tag=natureCore,nbt={ActiveEffects:[{Id:2}]}] at @s run effect give @e[distance=..4] slowness 1 0 true
execute as @e[type=slime,tag=natureCore,nbt={ActiveEffects:[{Id:2}]}] at @s run function cmd:explodecore
# fire field
execute as @e[type=slime,tag=natureCore,nbt={ActiveEffects:[{Id:32}]}] at @s run function cmd:reactions/firefield
# nature tree
execute as @e[type=slime,tag=natureCore,nbt={ActiveEffects:[{Id:29}]}] at @s run function cmd:reactions/natureplant

#nature tree dmg
execute at @a[tag=!spectating] as @e[type=block_display,tag=naturePlant] at @s positioned ~2.5 ~ ~2.5 run effect give @e[distance=..2.5] bad_omen 1 0 true
execute at @a[tag=!spectating] as @e[type=block_display,tag=naturePlant] run scoreboard players remove @s natureplanttime 1
execute at @a[tag=!spectating] as @e[type=block_display,tag=naturePlant,scores={natureplanttime=..0}] run kill @s

#/give @p heart_of_the_sea{TransmuteCore:1,display:{Name:'[{"text":"Transmute Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]} 1
# COLD: (Slowness)
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:2}]}] at @s[type=!armor_stand,tag=!spectating] run particle snowflake ~ ~0.9 ~ 0.3 0.3 0.3 0 3
# HOT: (Fire res)
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:32}]}] at @s[type=!armor_stand,tag=!spectating] run particle block fire ~ ~0.9 ~ 0.3 0.3 0.3 0 5
# WET (unluick):
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:27}]}] at @s[type=!armor_stand,tag=!spectating] run particle block water ~ ~0.9 ~ 0.3 0.3 0.3 0 4
# NATURE (badomen):
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:31}]}] at @s[type=!armor_stand,tag=!spectating] run particle block azalea_leaves ~ ~0.9 ~ 0.3 0.3 0.3 0 4



# BURNING
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:31},{Id:32}]}] at @s[type=!armor_stand] run function cmd:reactions/burning
# CRISP
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:31},{Id:2}]}] at @s[type=!armor_stand] run function cmd:reactions/crisp
# BLOOM
execute at @a[tag=!spectating] as @e[tag=!natureCore,nbt={ActiveEffects:[{Id:31},{Id:27}]}] at @s[type=!armor_stand] run function cmd:reactions/bloom
# OVERGROWTH
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:31},{Id:29}]}] at @s[type=!armor_stand] run function cmd:reactions/overgrowth


# LIGHTNING (Test)
# execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:29}]}] at @s[type=!armor_stand] run function cmd:reactions/electric
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:29}]}] at @s[type=!armor_stand] run particle firework ~ ~0.9 ~ 0.3 0.3 0.3 0 1

#execute as @a[tag=!spectating,scores={superconduct=1..}] run attribute @s generic.armor base set -10



# RADIATION
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:29},{Id:32}]}] at @s[type=!armor_stand] run function cmd:reactions/radiation
# SUPERCONDUCT
execute at @a[tag=!spectating] as @e[scores={superconduct=1..}] run scoreboard players remove @s superconduct 1
execute at @a[tag=!spectating] as @e[scores={superconduct=1..}] at @s[type=!armor_stand] run particle electric_spark ~ ~0.9 ~ 0.3 0.3 0.3 0 20
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:29},{Id:2}]}] at @s[type=!armor_stand] run function cmd:reactions/superconduct

# electriified
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:29},{Id:27}]}] at @s[type=!armor_stand] run function cmd:reactions/electrified

execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:15}]}] at @s[type=!armor_stand] run particle enchanted_hit ~ ~0.9 ~ 0.3 0.3 0.3 0 10

scoreboard players remove @a[scores={shields=501..}] shields 1


# execute at @a[tag=!spectating] as @e[type=!player,nbt={ActiveEffects:[{Id:32}]}] at @s if block ~ ~ ~ water run effect give @s wither 1 10
# execute at @a[tag=!spectating] as @e[type=!player,nbt={ActiveEffects:[{Id:32}]}] at @s if block ~ ~ ~ water run effect clear @s hero_of_the_village
# execute at @a[tag=!spectating] as @e[type=!player,nbt={ActiveEffects:[{Id:32}]}] at @s if block ~ ~ ~ powder_snow run effect give @s wither 1 1
# execute at @a[tag=!spectating] as @e[type=!player,nbt={ActiveEffects:[{Id:32}]}] at @s if block ~ ~ ~ powder_snow run effect clear @s hero_of_the_village

# HOT AND COLD (MELT) 
# Use function "cmd:reactions/hotandcold" for legacy Melt/Harden. Note that this is buggy (Harden does not have ICD and does not remove fire)
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:32},{Id:2}]}] at @s run function cmd:reactions/melt
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:32},{Id:27}]}] at @s run function cmd:reactions/harden

# FROZEN
execute at @a[tag=!spectating] as @e[nbt={ActiveEffects:[{Id:2}]},tag=!important] at @s[nbt={ActiveEffects:[{Id:27}]}] run function cmd:reactions/freeze

execute at @a[tag=!spectating] as @e[scores={noAITime=1..,staggeredtime=30..}] at @s run function cmd:reactions/shattered
