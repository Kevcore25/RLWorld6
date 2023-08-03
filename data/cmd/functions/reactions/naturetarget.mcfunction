
execute at @s as @e[distance=..10] run scoreboard players add @s naturetargetCD 0
execute at @s as @e[distance=..10] run scoreboard players add @s naturetarget 0


execute at @s as @e[distance=..10,scores={naturetarget=1..,naturetargetCD=..0}] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Target Hit","color":"#2E6930"}',Tags:[ReactionText]}
execute at @s as @e[distance=..10,scores={naturetarget=1..,naturetargetCD=..0}] run effect give @s bad_omen 4 0 true
execute at @s as @e[distance=..10,scores={naturetarget=1..,naturetargetCD=..0}] run damage @s 3 magic
execute at @s as @e[distance=..10,scores={naturetarget=1..,naturetargetCD=..0}] run scoreboard players add @s naturetargetCD 20
