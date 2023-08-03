## Charred reaction
# Kevcore 2023/06/16

# Status ID. 21 = Charred
scoreboard players set @s currentStatus 21



# # Check for nearest player with EM
# execute if entity @p[distance=..7,scores={ARem=0}] run damage @s[type=!player,scores={reactionICD=..0}] 5 magic by @p
# execute if entity @p[distance=..7,scores={ARem=1}] run damage @s[type=!player,scores={reactionICD=..0}] 6 magic by @p
# execute if entity @p[distance=..7,scores={ARem=2}] run damage @s[type=!player,scores={reactionICD=..0}] 7 magic by @p
# execute if entity @p[distance=..7,scores={ARem=3}] run damage @s[type=!player,scores={reactionICD=..0}] 8 magic by @p
# execute if entity @p[distance=..7,scores={ARem=4}] run damage @s[type=!player,scores={reactionICD=..0}] 9 magic by @p
# execute if entity @p[distance=..7,scores={ARem=5}] run damage @s[type=!player,scores={reactionICD=..0}] 10 magic by @p
# execute if entity @p[distance=..7,scores={ARem=6}] run damage @s[type=!player,scores={reactionICD=..0}] 11 magic by @p
# execute if entity @p[distance=..7,scores={ARem=7}] run damage @s[type=!player,scores={reactionICD=..0}] 12 magic by @p
# execute if entity @p[distance=..7,scores={ARem=8..}] run damage @s[type=!player,scores={reactionICD=..0}] 13 magic by @p

# EM INCREASE
scoreboard players set @s[type=!player,scores={reactionICD=..0}] reactionDMG 10
scoreboard players operation @s[type=!player,scores={reactionICD=..0}] reactionDMG *= @p[distance=..7] ARem
# BASE DMG
scoreboard players add @s[type=!player,scores={reactionICD=..0}] reactionDMG 50
execute at @s[type=!player,scores={reactionICD=..0}] run function cmd:reactions/dmg

# Check for nearest player with EM
execute if entity @p[distance=..7,scores={ARem=0}] run scoreboard players set @s[type=!player,scores={reactionICD=..0}] charredEM 0
execute if entity @p[distance=..7,scores={ARem=4..6}] run scoreboard players set @s[type=!player,scores={reactionICD=..0}] charredEM 1
execute if entity @p[distance=..7,scores={ARem=7..}] run scoreboard players set @s[type=!player,scores={reactionICD=..0}] charredEM 2

scoreboard players add @s charredEM 0
scoreboard players set @s[type=!player,scores={reactionICD=..0}] charredTime 100

# Just in case

# For players only
damage @s[type=player,scores={reactionICD=..0,ARemres=1}] 4.5 magic
damage @s[type=player,scores={reactionICD=..0,ARemres=2}] 4 magic
damage @s[type=player,scores={reactionICD=..0,ARemres=3}] 3.5 magic
damage @s[type=player,scores={reactionICD=..0,ARemres=4}] 3 magic
damage @s[type=player,scores={reactionICD=..0,ARemres=5}] 2.5 magic
damage @s[type=player,scores={reactionICD=..0,ARemres=6}] 2 magic
damage @s[type=player,scores={reactionICD=..0,ARemres=7}] 1.5 magic
damage @s[type=player,scores={reactionICD=..0,ARemres=8..}] 1 magic
damage @s[type=player,scores={reactionICD=..0,ARemres=0}] 5 magic

tellraw @s[type=player,scores={reactionICD=..0},tag=reactionMSG] [{"text":"Reaction triggered: ","color": "red"}, {"text": "Charred","color": "gold"}]

# Particles
execute if entity @s[scores={reactionICD=..0}] run particle falling_obsidian_tear ~ ~0.9 ~ 0.1 0.3 0.1 0 500

# Summon text
execute if entity @s[scores={reactionICD=..0}] run summon text_display ~ ~1.15 ~ {billboard:"center",see_through:1b,Tags:["ReactionText"],text:'{"text":"Charred","color":"#333333","bold":true,"italic":false}',background:268435456}

# Remove statuses. Not affected by ICD!
effect clear @s bad_omen
effect clear @s conduit_power

# Fix for onfire entities
data merge entity @s[type=!player] {Fire:0s}

# Nature target
execute if entity @s[scores={naturetarget=1..}] run function cmd:reactions/naturetarget

# Set ICD
scoreboard players add @s[scores={reactionICD=..0}] reactionICD 10

