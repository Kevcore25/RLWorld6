## Melt reaction
# Kevcore 2023/05/29

# Status ID. 10 = Melt
scoreboard players set @s currentStatus 10

# Check for nearest player with EM
# execute if entity @p[distance=..7,scores={ARem=0}] run damage @s[type=!player,scores={reactionICD=..0}] 15 magic by @p
# execute if entity @p[distance=..7,scores={ARem=1}] run damage @s[type=!player,scores={reactionICD=..0}] 19 magic by @p
# execute if entity @p[distance=..7,scores={ARem=2}] run damage @s[type=!player,scores={reactionICD=..0}] 23 magic by @p
# execute if entity @p[distance=..7,scores={ARem=3}] run damage @s[type=!player,scores={reactionICD=..0}] 27 magic by @p
# execute if entity @p[distance=..7,scores={ARem=4}] run damage @s[type=!player,scores={reactionICD=..0}] 31 magic by @p
# execute if entity @p[distance=..7,scores={ARem=5}] run damage @s[type=!player,scores={reactionICD=..0}] 35 magic by @p
# execute if entity @p[distance=..7,scores={ARem=6}] run damage @s[type=!player,scores={reactionICD=..0}] 39 magic by @p
# execute if entity @p[distance=..7,scores={ARem=7}] run damage @s[type=!player,scores={reactionICD=..0}] 43 magic by @p
# execute if entity @p[distance=..7,scores={ARem=8..}] run damage @s[type=!player,scores={reactionICD=..0}] 47 magic by @p

# EM INCREASE
scoreboard players set @s[type=!player,scores={reactionICD=..0}] reactionDMG 40
scoreboard players operation @s[type=!player,scores={reactionICD=..0}] reactionDMG *= @p[distance=..7] ARem
# BASE DMG
scoreboard players add @s[type=!player,scores={reactionICD=..0}] reactionDMG 150
execute at @s[type=!player,scores={reactionICD=..0}] run function cmd:reactions/dmg

# # Just in case
# damage @s[type=!player,scores={reactionICD=..0}] 15 magic by @p

# For players only
damage @s[type=player,scores={reactionICD=..0,ARemres=1}] 13.5
damage @s[type=player,scores={reactionICD=..0,ARemres=2}] 12
damage @s[type=player,scores={reactionICD=..0,ARemres=3}] 10.5
damage @s[type=player,scores={reactionICD=..0,ARemres=4}] 9
damage @s[type=player,scores={reactionICD=..0,ARemres=5}] 7.5
damage @s[type=player,scores={reactionICD=..0,ARemres=6}] 6
damage @s[type=player,scores={reactionICD=..0,ARemres=7}] 4.5
damage @s[type=player,scores={reactionICD=..0,ARemres=8..}] 3
damage @s[type=player,scores={reactionICD=..0,ARemres=0}] 15

tellraw @s[type=player,scores={reactionICD=..0},tag=reactionMSG] [{"text":"Reaction triggered: ","color": "red"}, {"text": "Melt","color": "gold"}]

# Particles
execute if entity @s[scores={reactionICD=..0}] run particle block lava ~ ~0.9 ~ 0.1 0.3 0.1 0 100
execute if entity @s[scores={reactionICD=..0}] run particle block lava_cauldron ~ ~0.9 ~ 0.1 0.3 0.1 0 100

# Summon text
execute if entity @s[scores={reactionICD=..0}] run summon text_display ~ ~1.15 ~ {billboard:"center",see_through:1b,Tags:["ReactionText"],text:'{"text":"Melt","color":"#FFAA00","bold":true,"italic":false}',background:268435456}

# Remove statuses. Not affected by ICD!
effect clear @s hero_of_the_village
effect clear @s slowness

# Fix for onfire entities
data merge entity @s[type=!player] {Fire:0s}

# # Reduce burning reaction
# scoreboard players set @s burning 20
# scoreboard players set @s[scores={burning=..0}] burning 0

# Nature target
execute if entity @s[scores={naturetarget=1..,reactionICD=..0}] run function cmd:reactions/naturetarget

# Set ICD
scoreboard players add @s[scores={reactionICD=..0}] reactionICD 30

