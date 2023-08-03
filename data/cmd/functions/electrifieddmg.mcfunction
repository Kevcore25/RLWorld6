# ELECTRIFIED DMG
# Kevcore 06/13/2023
scoreboard players add @s electrifiedEM 0
# execute if entity @s[scores={electrifiedEM=0}] run damage @s 2 magic
# execute if entity @s[scores={electrifiedEM=1}] run damage @s 3 magic
# execute if entity @s[scores={electrifiedEM=2}] run damage @s 4 magic
# execute if entity @s[scores={electrifiedEM=3}] run damage @s 5 magic
# execute if entity @s[scores={electrifiedEM=4}] run damage @s 6 magic
# execute if entity @s[scores={electrifiedEM=5}] run damage @s 7 magic
# execute if entity @s[scores={electrifiedEM=6}] run damage @s 8 magic
# execute if entity @s[scores={electrifiedEM=7}] run damage @s 9 magic
# execute if entity @s[scores={electrifiedEM=8..}] run damage @s 10 magic
# execute if entity @s[scores={electrifiedEM=9,charredTime=1..}] run damage @s 11 magic
# execute if entity @s[scores={electrifiedEM=10,charredTime=1..}] run damage @s 12 magic
# execute if entity @s[scores={electrifiedEM=11,charredTime=1..}] run damage @s 13 magic
# execute if entity @s[scores={electrifiedEM=12..,charredTime=1..}] run damage @s 14 magic


# EM Increase DMG
scoreboard players set @s[type=!player] reactionDMG 10
scoreboard players operation @s[type=!player] reactionDMG *= @s electrifiedEM
# BASE DMG
scoreboard players add @s[type=!player] reactionDMG 30
execute at @s[type=!player] run function cmd:reactions/dmg

damage @s[type=player] 2 magic

scoreboard players remove @s electrified 1

execute if entity @s[scores={electrified=0}] run scoreboard players set @s electrifiedEM 0