function cmd:reactions/crisp
# scoreboard objectives add bloomtempamt dummy
# scoreboard players set @s bloomtempamt 0
# execute at @e[type=slime,tag=natureCore,distance=..5] run scoreboard players add @s bloomtempamt 1

# execute as @s[scores={reactionICD=0}] run summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Bloom","color":"#00FF00"}',Tags:[ReactionText]}

# execute if entity @s[scores={bloomtempamt=3..}] run execute as @e[type=slime,distance=..5,limit=1,sort=random] run function cmd:explodecore

# execute if entity @s[scores={bloomtempamt=..2}] run summon slime ~ ~ ~ {Tags:[natureCore,clearNature,clearWater,bloomtemp,noondeath],Size:0,Health:16384,NoAI:1b,Silent:1b,Attributes:[{Name:"generic.max_health",Base:16384f}],CustomName:'[{"text":"Bloom","color":"green"}]',CustomNameVisible:1b}
# execute if entity @s[scores={bloomtempamt=..2}] run execute as @e[type=slime,distance=..1,tag=bloomtemp] if entity @p[distance=..7,nbt={Inventory:[{tag:{ART-BloomMaster:1}}]}] run scoreboard players set @s bloomtime 20
# execute if entity @s[scores={bloomtempamt=..2}] run execute as @e[type=slime,distance=..1,tag=bloomtemp] unless entity @p[distance=..7,nbt={Inventory:[{tag:{ART-BloomMaster:1}}]}] run scoreboard players set @s bloomtime 100
# execute if entity @s[scores={bloomtempamt=..2}] run execute as @e[type=slime,distance=..1,tag=bloomtemp] run scoreboard players operation @s ARem = @p[distance=..7] ARem
# execute if entity @s[scores={charredEM=0,charredTime=1..}] run scoreboard players add @e[type=slime,distance=..1,tag=bloomtemp] ARem 1
# execute if entity @s[scores={charredEM=1,charredTime=1..}] run scoreboard players add @e[type=slime,distance=..1,tag=bloomtemp] ARem 2
# execute if entity @s[scores={charredEM=2,charredTime=1..}] run scoreboard players add @e[type=slime,distance=..1,tag=bloomtemp] ARem 3
# execute if entity @s[scores={bloomtempamt=..2}] run execute as @e[type=slime,distance=..1,tag=bloomtemp] run tag @s remove bloomtemp

# effect clear @s bad_omen
# effect clear @s unluck

# # Nature target
# execute if entity @s[scores={naturetarget=1..,reactionICD=..0}] run function cmd:reactions/naturetarget