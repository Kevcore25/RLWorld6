## Harden reaction
# Kevcore 2023/05/29

# Status ID. 11 = Harden
scoreboard players set @s currentStatus 11

# Create sizzle reaction...
damage @s[type=player,scores={ARemres=0}] 10 generic
damage @s[type=player,scores={ARemres=1}] 9 generic
damage @s[type=player,scores={ARemres=2}] 8 generic
damage @s[type=player,scores={ARemres=3}] 7 generic
damage @s[type=player,scores={ARemres=4}] 6 generic
damage @s[type=player,scores={ARemres=5}] 5 generic
damage @s[type=player,scores={ARemres=6}] 4 generic
damage @s[type=player,scores={ARemres=7}] 3 generic
damage @s[type=player,scores={ARemres=8..}] 2 generic

execute if entity @s[gamemode=!creative,scores={reactionICD=..0}] run effect give @s[tag=!spectator] blindness 2
particle large_smoke ~ ~ ~ 0.3 0.5 0.3 0 1000

# Create Shield
execute if entity @s[type=!player,scores={reactionICD=..0}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:raw_gold_block",tag:{Shield:1}}}] run summon item ^ ^2 ^1 {Invulnerable:1b,CustomName:'{"text":"Shield","color":"yellow"}',Item:{id:"minecraft:raw_gold_block",Count:1b,tag:{Shield:1}},CustomNameVisible:1b}


# Deal DMG. This DMG can scale off EM as of V6
# EM Increase DMG
scoreboard players set @s[scores={reactionICD=..0},type=!player] reactionDMG 20
scoreboard players operation @s[scores={reactionICD=..0},type=!player] reactionDMG *= @p[distance=..7] ARem
# BASE DMG
scoreboard players add @s[scores={reactionICD=..0},type=!player] reactionDMG 80
execute at @s[scores={reactionICD=..0},type=!player] run function cmd:reactions/dmg
# Particles
execute if entity @s[scores={reactionICD=..0},type=!player] run particle block raw_gold_block ~ ~0.9 ~ 0.1 0.3 0.1 0 500

# Summon text
execute if entity @s[type=!player,scores={reactionICD=..0}] run summon text_display ~ ~ ~ {billboard:"center",see_through:1b,Tags:["ReactionText"],text:'{"text":"Harden","color":"#999999","bold":true,"italic":false}',background:268435456}

# Remove statuses. Not affected by ICD!
effect clear @s hero_of_the_village
effect clear @s unluck


# Fix for onfire entities
data merge entity @s[type=!player] {Fire:0s}

# Reduce burning reaction
scoreboard players remove @s burning 10
scoreboard players set @s[scores={burning=..0}] burning 0

# Nature target
execute if entity @s[scores={naturetarget=1..,reactionICD=..0}] run function cmd:reactions/naturetarget

# Set ICD
scoreboard players add @s[scores={reactionICD=..0}] reactionICD 30
