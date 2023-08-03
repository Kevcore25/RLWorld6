## Shattered
# Kevcore 

# Add scoreboard objectives
scoreboard objectives add shatteredTemp dummy
scoreboard objectives add shatteredTemp2 dummy

# set values
scoreboard players set baseEMDMG shatteredTemp 4
scoreboard players set baseATKDMG shatteredTemp 2


scoreboard players operation @s shatteredTemp = @p[distance=..7] ARem
scoreboard players operation @s shatteredTemp *= baseEMDMG shatteredTemp
scoreboard players operation @s shatteredTemp2 = @p[distance=..7] ARatk
scoreboard players operation @s shatteredTemp2 *= baseATKDMG shatteredTemp
scoreboard players operation @s shatteredTemp += @s shatteredTemp2

execute if entity @s[scores={reactionICD=1..}] run scoreboard players operation @s shatteredTemp2 /= baseATKDMG shatteredTemp

scoreboard players set @s[scores={shatteredTemp=26..}] shatteredTemp 25
scoreboard players set @s[scores={shatteredTemp=..6}] shatteredTemp 6

damage @s[type=player] 30 player_attack by @p


damage @s[type=!player,scores={shatteredTemp=6}] 9 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=7}] 10.5 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=8}] 12 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=9}] 13.5 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=10}] 15 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=11}] 16.5 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=12}] 18 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=13}] 19.5 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=14}] 21 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=15}] 22.5 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=16}] 24 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=17}] 25.5 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=18}] 27 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=19}] 28.5 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=20}] 30 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=21}] 31.5 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=22}] 33 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=23}] 34.5 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=24}] 36 player_attack by @p
damage @s[type=!player,scores={shatteredTemp=25..}] 37.5 player_attack by @p

damage @s 9 player_attack

execute if entity @s[scores={reactionICD=1..}] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Shattered (Less)","color":"#D2B48C"}',Tags:[ReactionText]}
execute if entity @s[scores={reactionICD=0}] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Shattered","color":"#D2B48C"}',Tags:[ReactionText]}

particle minecraft:block ice ~ ~0.5 ~ 0.1 0.5 0.1 0 1000
playsound block.glass.break player @a
scoreboard players set @s noAITime 0
scoreboard players set @s staggeredtime 0

scoreboard players set @s[scores={reactionICD=0}] reactionICD 24

scoreboard players set @s currentStatus -2