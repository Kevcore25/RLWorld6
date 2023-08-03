scoreboard players set @s currentStatus 13

execute as @s[scores={reactionICD=0,ARemres=0}] run damage @s[type=player,gamemode=!creative] 6 out_of_world
execute as @s[scores={reactionICD=0,ARemres=1}] run damage @s[type=player,gamemode=!creative] 5.4 out_of_world
execute as @s[scores={reactionICD=0,ARemres=2}] run damage @s[type=player,gamemode=!creative] 4.8 out_of_world
execute as @s[scores={reactionICD=0,ARemres=3}] run damage @s[type=player,gamemode=!creative] 4.2 out_of_world
execute as @s[scores={reactionICD=0,ARemres=4}] run damage @s[type=player,gamemode=!creative] 3.6 out_of_world
execute as @s[scores={reactionICD=0,ARemres=5}] run damage @s[type=player,gamemode=!creative] 3 out_of_world
execute as @s[scores={reactionICD=0,ARemres=6}] run damage @s[type=player,gamemode=!creative] 2.4 out_of_world
execute as @s[scores={reactionICD=0,ARemres=7}] run damage @s[type=player,gamemode=!creative] 1.8 out_of_world
execute as @s[scores={reactionICD=0,ARemres=8..}] run damage @s[type=player,gamemode=!creative] 1.2 out_of_world

# execute as @s[scores={reactionICD=0}] if entity @p[distance=..7,scores={ARem=1}] run damage @s[type=!player] 6 out_of_world by @p[distance=..7]
# execute as @s[scores={reactionICD=0}] if entity @p[distance=..7,scores={ARem=2}] run damage @s[type=!player] 7.6 out_of_world by @p[distance=..7]
# execute as @s[scores={reactionICD=0}] if entity @p[distance=..7,scores={ARem=3}] run damage @s[type=!player] 9.2 out_of_world by @p[distance=..7]
# execute as @s[scores={reactionICD=0}] if entity @p[distance=..7,scores={ARem=4}] run damage @s[type=!player] 10.8 out_of_world by @p[distance=..7]
# execute as @s[scores={reactionICD=0}] if entity @p[distance=..7,scores={ARem=5}] run damage @s[type=!player] 12.4 out_of_world by @p[distance=..7]
# execute as @s[scores={reactionICD=0}] if entity @p[distance=..7,scores={ARem=6}] run damage @s[type=!player] 14 out_of_world by @p[distance=..7]
# execute as @s[scores={reactionICD=0}] if entity @p[distance=..7,scores={ARem=7}] run damage @s[type=!player] 15.6 out_of_world by @p[distance=..7]
# execute as @s[scores={reactionICD=0}] if entity @p[distance=..7,scores={ARem=8..}] run damage @s[type=!player] 17.2 out_of_world by @p[distance=..7]

# EM INCREASE
scoreboard players set @s[type=!player,scores={reactionICD=..0}] reactionDMG 16
scoreboard players operation @s[type=!player,scores={reactionICD=..0}] reactionDMG *= @p[distance=..7] ARem
# BASE DMG
scoreboard players add @s[type=!player,scores={reactionICD=..0}] reactionDMG 60
execute at @s[type=!player,scores={reactionICD=..0}] run function cmd:reactions/voiddmg

execute as @s[scores={reactionICD=0}] run summon text_display ~ ~1.15 ~ {billboard:"center",see_through:1b,Tags:["ReactionText"],text:'{"text":"Radiation","color":"#FF1100","bold":true,"italic":false}',background:268435456}

execute if entity @s[scores={reactionICD=0}] run scoreboard players set @s reactionICD 20

particle electric_spark ~ ~ ~ 0.5 1 0.5 0 100
particle angry_villager ~ ~0.5 ~ 0.2 0.2 0.2 0 5

effect clear @s hero_of_the_village
effect clear @s conduit_power

execute if entity @s[scores={naturetarget=1..,reactionICD=..0}] run function cmd:reactions/naturetarget

