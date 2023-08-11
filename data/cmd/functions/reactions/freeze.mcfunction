#base

execute if entity @s[nbt={Inventory:[{tag:{ART-Defender:1}}]},scores={myrandom=0..2,reactionICD=..0}] run effect clear @s slowness
execute if entity @s[nbt={Inventory:[{tag:{ART-Defender:1}}]},scores={myrandom=0..2,reactionICD=..0}] run effect clear @s unluck
execute if entity @s[nbt={Inventory:[{tag:{ART-Defender:1}}]},scores={myrandom=0..2,reactionICD=..0}] run tellraw @s {"text": "Debuff prevented (Freeze)","color": "gray"}
execute if entity @s[nbt={Inventory:[{tag:{ART-Defender:1}}]},scores={myrandom=0..2,reactionICD=..0}] run scoreboard players add @s reactionICD 20

scoreboard players set @s[type=!player] noAITime 25

execute if entity @p[scores={ARem=1},distance=..7] run scoreboard players set @s[type=!player] noAITime 29
execute if entity @p[scores={ARem=2},distance=..7] run scoreboard players set @s[type=!player] noAITime 33
execute if entity @p[scores={ARem=3},distance=..7] run scoreboard players set @s[type=!player] noAITime 37
execute if entity @p[scores={ARem=4},distance=..7] run scoreboard players set @s[type=!player] noAITime 41
execute if entity @p[scores={ARem=5},distance=..7] run scoreboard players set @s[type=!player] noAITime 45
execute if entity @p[scores={ARem=6},distance=..7] run scoreboard players set @s[type=!player] noAITime 49
execute if entity @p[scores={ARem=7},distance=..7] run scoreboard players set @s[type=!player] noAITime 53
execute if entity @p[scores={ARem=8..},distance=..7] run scoreboard players set @s[type=!player] noAITime 57


tellraw @s[scores={reactionICD=..0}] {"text": "Debuff: Freeze","color": "red"}
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={reactionICD=..0,ARemres=0}] run scoreboard players set @s noAITime 40
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={reactionICD=..0,ARemres=1}] run scoreboard players set @s noAITime 36
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={reactionICD=..0,ARemres=2}] run scoreboard players set @s noAITime 32
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={reactionICD=..0,ARemres=3}] run scoreboard players set @s noAITime 28
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={reactionICD=..0,ARemres=4}] run scoreboard players set @s noAITime 24
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={reactionICD=..0,ARemres=5}] run scoreboard players set @s noAITime 20
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={reactionICD=..0,ARemres=6}] run scoreboard players set @s noAITime 16
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={reactionICD=..0,ARemres=7}] run scoreboard players set @s noAITime 12
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={reactionICD=..0,ARemres=8..}] run scoreboard players set @s noAITime 8
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={reactionICD=..0}] run effect give @s slowness 1 0 true
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={reactionICD=..0}] run scoreboard players set @s reactionICD 21



# execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={shields=1..,reactionICD=..0}] run scoreboard players remove @s shields 20
# execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={shields=1..,reactionICD=..0}] run scoreboard players set @s reactionICD 20
# execute if entity @s[type=player,nbt={ActiveEffects:[{Id:27},{Id:2}]},scores={shields=1..,reactionICD=..0}] run effect clear @s unluck
summon text_display ~ ~1.15 ~ {billboard:"center",see_through:1b,Tags:["ReactionText"],text:'{"text":"Freeze","color":"#00FFFF","bold":true,"italic":false}',background:268435456}


effect clear @s[type=!player] unluck

# Nature target
execute if entity @s[scores={naturetarget=1..,reactionICD=..0}] run function cmd:reactions/naturetarget