execute at @a as @e[distance=..24,nbt={ActiveEffects:[{Id:32},{Id:2}]}] run tag @s add hotandcold
scoreboard players add @s reactionICD 0
execute as @a[nbt={ActiveEffects:[{Id:32},{Id:27}]}] run tag @s add hotandcold
execute as @e[distance=..24,nbt={ActiveEffects:[{Id:32}]},scores={noAITime=1..}] run tag @s add hotandcold
execute as @e[distance=..24,type=!player,nbt={ActiveEffects:[{Id:32},{Id:27}]},scores={reactionICD=0}] at @s unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:raw_gold_block",tag:{Shield:1}}}] run summon item ^ ^2 ^1 {Invulnerable:1b,CustomName:'{"text":"Shield","color":"yellow"}',Item:{id:"minecraft:raw_gold_block",Count:1b,tag:{Shield:1}},CustomNameVisible:1b}
execute as @e[distance=..24,type=!player,nbt={ActiveEffects:[{Id:32},{Id:27}]}] at @s[scores={reactionICD=0}] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Harden","color":"#999999"}',Tags:[ReactionText]}
execute as @e[distance=..24,type=!player,nbt={ActiveEffects:[{Id:32},{Id:27}]}] at @s run damage @s[scores={reactionICD=0}] 4.5 magic
execute as @e[distance=..24,type=!player,nbt={ActiveEffects:[{Id:32},{Id:27}]}] at @s run effect clear @s unluck
execute as @e[distance=..24,type=!player,nbt={ActiveEffects:[{Id:27}]}] at @s run effect clear @s hero_of_the_village

execute as @a[distance=..24,nbt={ActiveEffects:[{Id:32},{Id:27}]},scores={reactionICD=0}] at @s run damage @s[scores={reactionICD=0}] 4 magic

execute as @e[distance=..24,nbt={ActiveEffects:[{Id:32},{Id:27}]}] at @s run effect clear @s unluck
execute as @e[distance=..24,nbt={ActiveEffects:[{Id:32},{Id:27}]}] at @s run effect clear @s hero_of_the_village

execute as @e[distance=..24,type=!player,nbt={ActiveEffects:[{Id:32},{Id:27}]},scores={reactionICD=0}] at @s run scoreboard players set @s reactionICD 20

execute as @e[tag=hotandcold] run damage @s[type=!player,scores={reactionICD=0}] 15 magic
execute as @e[tag=hotandcold,scores={reactionICD=0}] at @s run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Melt","color":"#FFAA00"}',Tags:[ReactionText]}

# execute as @a[tag=hotandcold] run effect give @s[nbt={ActiveEffects:[{Id:32,Amplifier:1b}]},scores={reactionICD=0}] instant_damage 15 0
# execute as @a[tag=hotandcold] run effect give @s[nbt={ActiveEffects:[{Id:2,Amplifier:1b}]},scores={reactionICD=0}] instant_damage 15 0
# execute as @a[tag=hotandcold] run effect give @s[nbt=!{ActiveEffects:[{Id:2,Amplifier:1b}]},scores={reactionICD=0}] instant_damage 1 0
execute as @a[tag=hotandcold] run damage @s[scores={reactionICD=0}] 8 magic

execute as @e[tag=hotandcold] at @s if entity @a[distance=..24,scores={reactionICD=0}] run particle block lava ~ ~0.9 ~ 0.1 0.3 0.1 0 500
execute as @e[tag=hotandcold] at @s if entity @a[distance=..24,scores={reactionICD=0}] run particle block lava_cauldron ~ ~0.9 ~ 0.1 0.3 0.1 0 500
execute as @e[tag=hotandcold] at @s if block ~ ~ ~ snow run setblock ~ ~ ~ air destroy

execute as @e[type=!player,nbt={ActiveEffects:[{Id:32}]}] at @s[nbt={ActiveEffects:[{Id:27}]},scores={reactionICD=0}] run tag @s add hotandcold
execute as @e[tag=hotandcold] run effect clear @s hero_of_the_village
execute as @e[tag=hotandcold] run effect clear @s slowness
execute as @e[tag=hotandcold] run effect clear @s unluck
execute as @e[tag=hotandcold] run scoreboard players set @s noAITime 0
execute as @e[tag=hotandcold] run data merge entity @s {Fire:0s}
execute as @e[tag=hotandcold] run scoreboard players add @s[scores={reactionICD=..0}] reactionICD 30
execute as @a[tag=hotandcold] run tag @s add cf
execute as @e[tag=hotandcold] run tag @s remove hotandcold


scoreboard players set @s currentStatus 10