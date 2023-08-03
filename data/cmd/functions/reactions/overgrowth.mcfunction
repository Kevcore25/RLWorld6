scoreboard players add @s overgrowpts 1
tellraw @s [{"text":"Overgrowing Points: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"overgrowpts"},"bold":true,"color":"green"}]

execute if entity @s[type=!player,scores={overgrowpts=3..}] run damage @s 20 magic
execute if entity @s[type=player,scores={overgrowpts=3..}] run damage @s 10 magic

execute if entity @s[scores={overgrowpts=3..}] run effect give @s bad_omen 1 0 true


execute if entity @s[scores={overgrowpts=1}] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Overgrowth (x1)","color":"#009900"}',Tags:[ReactionText]}
execute if entity @s[scores={overgrowpts=2}] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Overgrowth (x2)","color":"#009900"}',Tags:[ReactionText]}
execute if entity @s[scores={overgrowpts=3..}] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Overgrowth (x3)","color":"#009900"}',Tags:[ReactionText]}


execute if entity @s[scores={overgrowpts=3..}] if entity @p[scores={ARem=1},distance=..7] run damage @s[type=!player] 22 magic by @p[distance=..7]
execute if entity @s[scores={overgrowpts=3..}] if entity @p[scores={ARem=2},distance=..7] run damage @s[type=!player] 24 magic by @p[distance=..7]
execute if entity @s[scores={overgrowpts=3..}] if entity @p[scores={ARem=3},distance=..7] run damage @s[type=!player] 26 magic by @p[distance=..7]
execute if entity @s[scores={overgrowpts=3..}] if entity @p[scores={ARem=4},distance=..7] run damage @s[type=!player] 28 magic by @p[distance=..7]
execute if entity @s[scores={overgrowpts=3..}] if entity @p[scores={ARem=5},distance=..7] run damage @s[type=!player] 30 magic by @p[distance=..7]
execute if entity @s[scores={overgrowpts=3..}] if entity @p[scores={ARem=6},distance=..7] run damage @s[type=!player] 32 magic by @p[distance=..7]
execute if entity @s[scores={overgrowpts=3..}] if entity @p[scores={ARem=7},distance=..7] run damage @s[type=!player] 34 magic by @p[distance=..7]
execute if entity @s[scores={overgrowpts=3..}] if entity @p[scores={ARem=8..},distance=..7] run damage @s[type=!player] 36 magic by @p[distance=..7]

execute if entity @s[scores={overgrowpts=3..}] run scoreboard players set @s overgrowpts 0


execute if entity @s[scores={overgrowpts=..2}] run effect clear @s bad_omen
execute if entity @s[scores={overgrowpts=..2}] run effect clear @s conduit_power

scoreboard players set @s currentStatus 19