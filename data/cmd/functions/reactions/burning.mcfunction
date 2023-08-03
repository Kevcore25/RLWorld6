#base

execute if entity @s[nbt={Inventory:[{tag:{ART-Defender:1}}]},scores={myrandom=0..2,reactionICD=..0}] run tellraw @s {"text": "Debuff prevented (Burning)","color": "gray"}
execute if entity @s[nbt={Inventory:[{tag:{ART-Defender:1}}]},scores={myrandom=0..2,reactionICD=..0}] run scoreboard players add @s reactionICD 20

scoreboard players set @s[type=!player] burning 50
data merge entity @s[type=!player] {Fire:100s}

execute if entity @p[scores={ARem=1},distance=..7] run scoreboard players set @s[type=!player] burning 60 
execute if entity @p[scores={ARem=1},distance=..7] run data merge entity @s[type=!player] {Fire:120s}
execute if entity @p[scores={ARem=2},distance=..7] run scoreboard players set @s[type=!player] burning 70
execute if entity @p[scores={ARem=2},distance=..7] run data merge entity @s[type=!player] {Fire:140s}
execute if entity @p[scores={ARem=3},distance=..7] run scoreboard players set @s[type=!player] burning 80
execute if entity @p[scores={ARem=3},distance=..7] run data merge entity @s[type=!player] {Fire:160s}
execute if entity @p[scores={ARem=4},distance=..7] run scoreboard players set @s[type=!player] burning 90
execute if entity @p[scores={ARem=4},distance=..7] run data merge entity @s[type=!player] {Fire:180s}
execute if entity @p[scores={ARem=5},distance=..7] run scoreboard players set @s[type=!player] burning 100
execute if entity @p[scores={ARem=5},distance=..7] run data merge entity @s[type=!player] {Fire:200s}
execute if entity @p[scores={ARem=6},distance=..7] run scoreboard players set @s[type=!player] burning 110
execute if entity @p[scores={ARem=6},distance=..7] run data merge entity @s[type=!player] {Fire:220s}
execute if entity @p[scores={ARem=7},distance=..7] run scoreboard players set @s[type=!player] burning 120
execute if entity @p[scores={ARem=7},distance=..7] run data merge entity @s[type=!player] {Fire:240s}
execute if entity @p[scores={ARem=8..},distance=..7] run scoreboard players set @s[type=!player] burning 130
execute if entity @p[scores={ARem=8..},distance=..7] run data merge entity @s[type=!player] {Fire:260s}

scoreboard players set @s[type=player,scores={ARemres=0}] burning 50
scoreboard players set @s[type=player,scores={ARemres=1}] burning 45
scoreboard players set @s[type=player,scores={ARemres=2}] burning 40
scoreboard players set @s[type=player,scores={ARemres=3}] burning 35
scoreboard players set @s[type=player,scores={ARemres=4}] burning 30
scoreboard players set @s[type=player,scores={ARemres=5}] burning 25
scoreboard players set @s[type=player,scores={ARemres=6}] burning 20
scoreboard players set @s[type=player,scores={ARemres=7}] burning 15
scoreboard players set @s[type=player,scores={ARemres=8..}] burning 10


execute at @s[type=player] run summon minecraft:small_fireball ~ ~2.5 ~ {Tags:[burningFireball],power:[0.0,-10.0,0.0]}

summon text_display ~ ~1.15 ~ {billboard:"center",see_through:1b,Tags:["ReactionText"],text:'{"text":"Burning","color":"#FFAA00","bold":true,"italic":false}',background:268435456}

effect clear @s hero_of_the_village
effect clear @s bad_omen

tellraw @s {"text": "Debuff: Burning (5s)","color": "red"}

# Nature target
execute if entity @s[scores={naturetarget=1..,reactionICD=..0}] run function cmd:reactions/naturetarget

# ICD
scoreboard players set @s reactionICD 20