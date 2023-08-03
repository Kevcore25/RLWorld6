# OVERCRIT FUNCTION
# Kevcore 06/26/2023


# assumes if scholar final essay is already in inv
execute at @s[type=armor_stand] run return 0
execute at @s[type=#arrows] run return 0
execute at @s[type=item] run return 0
execute at @s[type=interaction] run return 0
execute at @s[type=text_display] run return 0

execute if score @p critchance matches 201.. run tag @p add oced
execute if score @p critchance matches 201.. run tag @p add oc200
execute if entity @p[tag=oc200] run scoreboard players remove @p critchance 200
execute if entity @p[tag=oc200] if score @p critchance > @p random100 run scoreboard players operation @s reactionDMG *= 4 intnumbers
#execute if entity @p[tag=oc200] if score @p critchance > @p random100 run summon armor_stand ~ ~1.5 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"CRITCIAL","color":"#FF1100"}',Tags:[ReactionText]}
execute if entity @p[tag=oc200] if score @p critchance > @p random100 run tag @s add redcrit
execute if entity @p[tag=oc200] if score @p critchance <= @p random100 run scoreboard players operation @s reactionDMG *= 3 intnumbers
#execute if entity @p[tag=oc200] if score @p critchance <= @p random100 run summon armor_stand ~ ~1.5 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"CRITCIAL","color":"#FFAA00"}',Tags:[ReactionText]}
execute if entity @p[tag=oc200] if score @p critchance <= @p random100 run tag @s add orangecrit


execute if score @p critchance matches 101.. run tag @p[tag=!oc200] add oced
execute if score @p critchance matches 101.. run tag @p[tag=!oc200] add oc100
execute if entity @p[tag=oc100] run scoreboard players remove @p critchance 100
execute if entity @p[tag=oc100] if score @p critchance > @p random100 run scoreboard players operation @s reactionDMG *= 3 intnumbers
#execute if entity @p[tag=oc100] if score @p critchance > @p random100 run summon armor_stand ~ ~1.5 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"CRITCIAL","color":"#FFAA00"}',Tags:[ReactionText]}
execute if entity @p[tag=oc100] if score @p critchance > @p random100 run tag @s add orangecrit
execute if entity @p[tag=oc100] if score @p critchance <= @p random100 run scoreboard players operation @s reactionDMG *= 2 intnumbers
#execute if entity @p[tag=oc100] if score @p critchance <= @p random100 run summon armor_stand ~ ~1.5 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"CRITCIAL","color":"#FFFF00"}',Tags:[ReactionText]}
execute if entity @p[tag=oc100] if score @p critchance <= @p random100 run tag @s add yellowcrit


execute unless entity @p[tag=oced] if score @p critchance matches ..100 if score @p critchance > @p random100 run scoreboard players operation @s reactionDMG *= 2 intnumbers
#execute unless entity @p[tag=oced] if score @p critchance matches ..100 if score @p critchance > @p random100 run summon armor_stand ~ ~1.5 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"CRITCIAL","color":"#FFFFFF"}',Tags:[ReactionText]}
execute unless entity @p[tag=oced] if score @p critchance matches ..100 if score @p critchance > @p random100 run tag @s add yellowcrit

tag @p remove oc100
tag @p remove oc200
tag @p remove oced

scoreboard players operation @p random100 = @p myrandom
scoreboard players operation @p random100 *= 10 intnumbers
scoreboard players operation @p myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen
scoreboard players operation @p random100 += @p myrandom
