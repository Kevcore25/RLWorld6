# NEW ELECTRIFIED
# Kevcore 06/13/2023


execute if entity @s[nbt={Inventory:[{tag:{ART-Defender:1}}]},scores={myrandom=0..2,reactionICD=..0}] run tellraw @s {"text": "Debuff prevented (Electrified)","color": "gray"}
execute if entity @s[nbt={Inventory:[{tag:{ART-Defender:1}}]},scores={myrandom=0..2,reactionICD=..0}] run scoreboard players add @s reactionICD 20

scoreboard players add @s reactionICD 0
# set electrified
execute if entity @s[scores={reactionICD=..0}] run scoreboard players set @s electrified 5
execute if entity @s[scores={reactionICD=..0}] run tag @s add electrifiedcreator

# just in case
execute if entity @s[scores={reactionICD=..0},type=player] run scoreboard players set @s electrifiedEM 0

#spread
execute if entity @s[scores={reactionICD=..0},type=!player] run scoreboard players set @e[type=!player,nbt={ActiveEffects:[{Id:27}]},distance=..7] electrified 5
execute if entity @s[scores={reactionICD=..0},type=!player] as @e[type=!player,nbt={ActiveEffects:[{Id:27}]},distance=..7] run scoreboard players operation @s electrifiedEM = @p[distance=..7] ARem

execute if entity @s[scores={reactionICD=..0},type=!player] as @e[type=!player,nbt={ActiveEffects:[{Id:27}]},distance=..7] run scoreboard players add @s[scores={charredEM=0,charredTime=1..}] electrifiedEM 1
execute if entity @s[scores={reactionICD=..0},type=!player] as @e[type=!player,nbt={ActiveEffects:[{Id:27}]},distance=..7] run scoreboard players add @s[scores={charredEM=1,charredTime=1..}] electrifiedEM 2
execute if entity @s[scores={reactionICD=..0},type=!player] as @e[type=!player,nbt={ActiveEffects:[{Id:27}]},distance=..7] run scoreboard players add @s[scores={charredEM=2,charredTime=1..}] electrifiedEM 3

#text
execute if entity @s[scores={reactionICD=..0},type=!player] at @e[type=!player,nbt={ActiveEffects:[{Id:27}]},distance=..7] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Electrified","color":"#FFFF00"}',Tags:[ReactionText]}
execute if entity @s[scores={reactionICD=..0},type=!player] at @e[type=!player,nbt={ActiveEffects:[{Id:27}]},distance=..7] run particle electric_spark ~ ~0.5 ~ 0.3 0.5 0.3 0 100
#self
execute if entity @s[scores={reactionICD=..0},type=!player] run scoreboard players operation @s electrifiedEM = @p[distance=..7] ARem
execute if entity @s[scores={reactionICD=..0},type=!player] run scoreboard players add @s[scores={charredEM=0,charredTime=1..}] electrifiedEM 1
execute if entity @s[scores={reactionICD=..0},type=!player] run scoreboard players add @s[scores={charredEM=1,charredTime=1..}] electrifiedEM 2
execute if entity @s[scores={reactionICD=..0},type=!player] run scoreboard players add @s[scores={charredEM=2,charredTime=1..}] electrifiedEM 3


execute if entity @s[scores={reactionICD=..0},type=player] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Electrified","color":"#FFFF00"}',Tags:[ReactionText]}

tellraw @s[scores={reactionICD=..0}] {"text": "Debuff: Electrified","color": "red"}
effect clear @s conduit_power
effect clear @s unluck

# Nature target
execute if entity @s[scores={naturetarget=1..,reactionICD=..0}] run function cmd:reactions/naturetarget
execute if entity @s[scores={reactionICD=..0}] run scoreboard players set @s reactionICD 15

tag @s remove electrifiedcreator

