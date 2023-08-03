
scoreboard players add @s reactionICD 0

scoreboard objectives add crisptemp dummy
scoreboard players operation @s crisptemp = @s[scores={crisptemp=0},distance=..7] ARem
scoreboard players add @s[scores={charredEM=0,charredTime=1..}] crisptemp 1
scoreboard players add @s[scores={charredEM=1,charredTime=1..}] crisptemp 2
scoreboard players add @s[scores={charredEM=2,charredTime=1..}] crisptemp 3

# execute if entity @s[scores={crisptemp=0},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 4 magic
# execute if entity @s[scores={crisptemp=1},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 5.3 magic
# execute if entity @s[scores={crisptemp=2},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 6.6 magic
# execute if entity @s[scores={crisptemp=3},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 7.9 magic
# execute if entity @s[scores={crisptemp=4},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 9.2 magic
# execute if entity @s[scores={crisptemp=5},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 10.5 magic
# execute if entity @s[scores={crisptemp=6},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 11.8 magic
# execute if entity @s[scores={crisptemp=7},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 13.1 magic
# execute if entity @s[scores={crisptemp=8..},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 14.4 magic
# execute if entity @s[scores={crisptemp=9,charredTime=1..},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 14.4 magic
# execute if entity @s[scores={crisptemp=10,charredTime=1..},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 14.4 magic
# execute if entity @s[scores={crisptemp=11,charredTime=1..},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 14.4 magic
# execute if entity @s[scores={crisptemp=12..,charredTime=1..},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 14.4 magic

# EM Increase DMG
scoreboard players set @s[scores={reactionICD=..0}] reactionDMG 13
scoreboard players operation @s[scores={reactionICD=..0}] reactionDMG *= @p[distance=..7] ARem
# BASE DMG
scoreboard players add @s[scores={reactionICD=..0}] reactionDMG 40
execute at @s[scores={reactionICD=..0}] run function cmd:reactions/dmg

execute as @e[type=!player,distance=..4] run effect give @s slowness 1 0 true
execute as @e[type=!player,distance=..4] run damage @s 4 magic

execute if entity @p[nbt={Inventory:[{tag:{CrispArtifact:1}}]},scores={ARem=9..},distance=..7] run execute as @e[type=!player,distance=..5] run damage @s[scores={reactionICD=..0}] 20 magic

particle block cobbled_deepslate ~ ~0.5 ~ 0.3 0.5 0.3 0 150



execute if entity @s[scores={reactionICD=..0}] run summon text_display ~ ~1.15 ~ {billboard:"center",see_through:1b,Tags:["ReactionText"],text:'{"text":"Crisp","color":"#00FFAA","bold":true,"italic":false}',background:268435456}

#effect give @s slowness 3 4

effect clear @s bad_omen
effect clear @s slowness

# Nature target
execute if entity @s[scores={naturetarget=1..,reactionICD=..0}] run function cmd:reactions/naturetarget

scoreboard players set @s currentStatus 17
scoreboard players add @s[scores={reactionICD=..0}] reactionICD 10