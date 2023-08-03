#assuming at and as slime

particle explosion ~ ~ ~ 0 0 0 0 1

scoreboard players add @s ARem 0
scoreboard players add @e[distance=..5] bloomhitamt 0
scoreboard players add @e[type=!player,distance=..5] reactionICD 0
# execute if entity @s[scores={ARem=0}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=0,reactionICD=..0}] run damage @s[tag=!natureCore] 4.5 cactus
# execute if entity @s[scores={ARem=1}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=0,reactionICD=..0}] run damage @s[tag=!natureCore] 5.7 cactus
# execute if entity @s[scores={ARem=2}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=0,reactionICD=..0}] run damage @s[tag=!natureCore] 6.9 cactus
# execute if entity @s[scores={ARem=3}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=0,reactionICD=..0}] run damage @s[tag=!natureCore] 8.1 cactus
# execute if entity @s[scores={ARem=4}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=0,reactionICD=..0}] run damage @s[tag=!natureCore] 9.3 cactus
# execute if entity @s[scores={ARem=5}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=0,reactionICD=..0}] run damage @s[tag=!natureCore] 10.5 cactus
# execute if entity @s[scores={ARem=6}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=0,reactionICD=..0}] run damage @s[tag=!natureCore] 11.7 cactus
# execute if entity @s[scores={ARem=7}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=0,reactionICD=..0}] run damage @s[tag=!natureCore] 12.9 cactus
# execute if entity @s[scores={ARem=8..}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=0,reactionICD=..0}] run damage @s[tag=!natureCore] 14.1 cactus
# execute if entity @s[scores={ARem=9}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0,charredTime=1..}] run damage @s[tag=!natureCore] 15.3 cactus
# execute if entity @s[scores={ARem=10}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0,charredTime=1..}] run damage @s[tag=!natureCore] 16.5 cactus
# execute if entity @s[scores={ARem=11}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0,charredTime=1..}] run damage @s[tag=!natureCore] 17.7 cactus
# execute if entity @s[scores={ARem=12..}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0,charredTime=1..}] run damage @s[tag=!natureCore] 18.9 cactus

# execute if entity @s[scores={ARem=0}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0}] run damage @s[tag=!natureCore] 9 cactus
# execute if entity @s[scores={ARem=1}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0}] run damage @s[tag=!natureCore] 11.4 cactus
# execute if entity @s[scores={ARem=2}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0}] run damage @s[tag=!natureCore] 13.8 cactus
# execute if entity @s[scores={ARem=3}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0}] run damage @s[tag=!natureCore] 16.2 cactus
# execute if entity @s[scores={ARem=4}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0}] run damage @s[tag=!natureCore] 18.6 cactus
# execute if entity @s[scores={ARem=5}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0}] run damage @s[tag=!natureCore] 21 cactus
# execute if entity @s[scores={ARem=6}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0}] run damage @s[tag=!natureCore] 23.4 cactus
# execute if entity @s[scores={ARem=7}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0}] run damage @s[tag=!natureCore] 25.8 cactus
# execute if entity @s[scores={ARem=8..}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0}] run damage @s[tag=!natureCore] 28.2 cactus
# execute if entity @s[scores={ARem=9}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0,charredTime=1..}] run damage @s[tag=!natureCore] 30.6 cactus
# execute if entity @s[scores={ARem=10}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0,charredTime=1..}] run damage @s[tag=!natureCore] 33 cactus
# execute if entity @s[scores={ARem=11}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0,charredTime=1..}] run damage @s[tag=!natureCore] 35 cactus
# execute if entity @s[scores={ARem=12..}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=1..,reactionICD=..0,charredTime=1..}] run damage @s[tag=!natureCore] 37.8 cactus

scoreboard players set 2 reactionDMG 2

# EM Increase DMG
execute as @e[type=!player,distance=..5,tag=!natureCore] at @s run scoreboard players set @s[scores={reactionICD=..0}] reactionDMG 8
execute as @e[type=!player,distance=..5,tag=!natureCore] at @s run scoreboard players operation @s[scores={reactionICD=..0}] reactionDMG *= @e[tag=natureCore,limit=1,sort=nearest] ARem

# BASE DMG
execute as @e[type=!player,distance=..5,tag=!natureCore] at @s run scoreboard players add @s[scores={reactionICD=..0}] reactionDMG 30
execute as @e[type=!player,distance=..5,tag=!natureCore] at @s[scores={reactionICD=..0}] run function cmd:reactions/dmg

# execute if entity @s[scores={ARem=0}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=2..,reactionICD=..0}] run damage @s[tag=!natureCore] 13.5 cactus
# execute if entity @s[scores={ARem=1}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=2..,reactionICD=..0}] run damage @s[tag=!natureCore] 17.1 cactus
# execute if entity @s[scores={ARem=2}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=2..,reactionICD=..0}] run damage @s[tag=!natureCore] 20.7 cactus
# execute if entity @s[scores={ARem=3}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=2..,reactionICD=..0}] run damage @s[tag=!natureCore] 24.3 cactus
# execute if entity @s[scores={ARem=4}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=2..,reactionICD=..0}] run damage @s[tag=!natureCore] 27.9 cactus
# execute if entity @s[scores={ARem=5}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=2..,reactionICD=..0}] run damage @s[tag=!natureCore] 31.5 cactus
# execute if entity @s[scores={ARem=6}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=2..,reactionICD=..0}] run damage @s[tag=!natureCore] 35.1 cactus
# execute if entity @s[scores={ARem=7}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=2..,reactionICD=..0}] run damage @s[tag=!natureCore] 38.7 cactus
# execute if entity @s[scores={ARem=8..}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=2..,reactionICD=..0}] run damage @s[tag=!natureCore] 42.3 cactus

# execute if entity @s[scores={ARem=8..}] run execute as @e[type=!player,distance=..4,scores={bloomhitamt=2..}] run tellraw @p[distance=..15] "You just did the most DPS in the game: a 3x Bloom with 4 EM"

effect give @e[distance=..5] bad_omen 1 0 true
execute as @a[distance=..5,scores={bloomhitamt=0}] run damage @s[tag=!natureCore] 0.75 magic
execute as @a[distance=..5,scores={bloomhitamt=1..}] run damage @s[tag=!natureCore] 1.5 magic
# execute as @a[distance=..4,scores={bloomhitamt=2..}] run damage @s[tag=!natureCore] 2.25 cactus
execute as @e[type=!player,distance=..5,tag=!natureCore] at @s[scores={reactionICD=..0}] run function cmd:reactions/naturetarget

scoreboard players add @e[distance=..4] bloomhitamt 1
execute if entity @p[distance=..7,nbt={Inventory:[{tag:{ART-BloomMaster:1}}]}] run scoreboard players add @e[scores={reactionICD=..0},distance=..5] reactionICD 4
scoreboard players add @e[scores={reactionICD=..0},distance=..5] reactionICD 8

data merge entity @s {Size:0}

kill @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}},distance=..3]
tp @s -1000 -400 -1000
kill @s

execute as @e[type=!player,distance=..5,tag=!natureCore] at @s[scores={reactionICD=..0}] run scoreboard players set @s reactionICD 8



scoreboard players set @s currentStatus 18