# damage @s 3 magic by @p[distance=..7]
# damage @s 3 magic
#EM INCREASE
scoreboard players set @s[type=!player,scores={reactionICD=..0}] reactionDMG 6
scoreboard players operation @s[type=!player,scores={reactionICD=..0}] reactionDMG *= @p[distance=..7] ARem
# BASE DMG
scoreboard players add @s[type=!player,scores={reactionICD=..0}] reactionDMG 30
execute at @s[type=!player,scores={reactionICD=..0}] run function cmd:reactions/dmg


effect give @s conduit_power 1 0 true

scoreboard players set @s[type=!player] superconduct 30
execute if entity @p[distance=..7,scores={ARem=1}] run scoreboard players set @s[type=!player] superconduct 34
execute if entity @p[distance=..7,scores={ARem=2}] run scoreboard players set @s[type=!player] superconduct 38
execute if entity @p[distance=..7,scores={ARem=3}] run scoreboard players set @s[type=!player] superconduct 42
execute if entity @p[distance=..7,scores={ARem=4}] run scoreboard players set @s[type=!player] superconduct 46
execute if entity @p[distance=..7,scores={ARem=5}] run scoreboard players set @s[type=!player] superconduct 50
execute if entity @p[distance=..7,scores={ARem=6}] run scoreboard players set @s[type=!player] superconduct 54
execute if entity @p[distance=..7,scores={ARem=7}] run scoreboard players set @s[type=!player] superconduct 58
execute if entity @p[distance=..7,scores={ARem=8..}] run scoreboard players set @s[type=!player] superconduct 62


scoreboard players set @s[type=player,scores={ARemres=0}] superconduct 30
scoreboard players set @s[type=player,scores={ARemres=1}] superconduct 27
scoreboard players set @s[type=player,scores={ARemres=2}] superconduct 24
scoreboard players set @s[type=player,scores={ARemres=3}] superconduct 21
scoreboard players set @s[type=player,scores={ARemres=4}] superconduct 18
scoreboard players set @s[type=player,scores={ARemres=5}] superconduct 15
scoreboard players set @s[type=player,scores={ARemres=6}] superconduct 12
scoreboard players set @s[type=player,scores={ARemres=7}] superconduct 9
scoreboard players set @s[type=player,scores={ARemres=8..}] superconduct 6



effect clear @s resistance
# Shields. Add 0 JIC
scoreboard players add @a shields 0


summon text_display ~ ~1.15 ~ {billboard:"center",see_through:1b,Tags:["ReactionText"],text:'{"text":"Superconduct","color":"#FF00FF","bold":true,"italic":false}',background:268435456}

effect clear @s slowness
effect clear @s conduit_power
# Nature target
execute if entity @s[scores={naturetarget=1..}] run function cmd:reactions/naturetarget
