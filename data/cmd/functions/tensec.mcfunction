
schedule function cmd:tensec 10s replace
execute as @e[type=phantom] at @s run execute as @e[distance=..50,type=player] run summon lightning_bolt ~ ~-1 ~
#execute as @e[type=phantom] at @s run weather thunder 10
#execute as @e[type=phantom] at @s run attribute @s generic.max_health base set 600
tellraw @a[tag=debuger] {"text":"tensec.mcfunction ran","color":"gray"}
#execute at @e[type=phantom] run fill ~5 ~ ~5 ~-5 ~3 ~-5 gravel
#effect give @a hunger 11 0 true
#effect give @a hunger 5 1 true
execute as @e[type=armor_stand,tag=randomGen,limit=1] at @s[tag=raining] in overworld run execute at @a[distance=0..] as @e[sort=random,limit=1,type=!item,distance=..96] at @s[type=!villager] if entity @s[type=!armor_stand,tag=!spectating] if block ~ ~2 ~ air if block ~ ~3 ~ air if block ~ ~4 ~ air if block ~ ~5 ~ air if block ~ ~6 ~ air if block ~ ~7 ~ air if block ~ ~8 ~ air if block ~ ~9 ~ air if block ~ ~10 ~ air run function cmd:lightning
scoreboard objectives remove osbarchange 
scoreboard objectives add osbarchange dummy {"text":"Rank Level","color":"light_purple"}
scoreboard objectives setdisplay sidebar coins
execute as @a run scoreboard players operation @s osbarchange = @s rank.
time add 1t
tag @a remove slrequired
tag @a remove sldrequired

execute at @a if biome ~ ~ ~ #is_forest run playsound minecraft:entity.parrot.ambient ambient @a ~ ~ ~ 1 2
scoreboard players add @a combatLvl 0
scoreboard players add @a axesLvl 0
scoreboard players add @a pickaxesLvl 0
scoreboard players add @a gatheringLvl 0
scoreboard players add @a firstaidLvl 0


# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~ ~ ~5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~ ~ ~-5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~5 ~ ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~-5 ~ ~ {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~ ~ ~10 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~ ~ ~-10 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~10 ~ ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~-10 ~ ~ {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~ ~ ~15 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~ ~ ~-15 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~15 ~ ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~-15 ~ ~ {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~ ~ ~20 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~ ~ ~-20 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~20 ~ ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~-20 ~ ~ {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~ ~ ~25 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~ ~ ~-25 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~25 ~ ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run summon tnt ~-25 ~ ~ {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~5 ~10 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~-5 ~10 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~10 ~5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~10 ~-5 {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~5 ~20 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~-5 ~20 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~20 ~5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~20 ~-5 {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~5 ~30 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~-5 ~30 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~30 ~5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~30 ~-5 {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~5 ~40 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~-5 ~40 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~40 ~5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~40 ~-5 {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~5 ~50 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~-5 ~50 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~50 ~5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~50 ~-5 {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~5 ~60 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~-5 ~60 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~60 ~5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~60 ~-5 {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~5 ~70 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~-5 ~70 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~70 ~5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~70 ~-5 {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~5 ~80 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~-5 ~80 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~80 ~5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~80 ~-5 {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~5 ~90 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~-5 ~90 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~90 ~5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~90 ~-5 {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~5 ~100 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~-5 ~100 ~ {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~100 ~5 {Fuse:100}
# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~100 ~-5 {Fuse:100}

# execute at @e[type=ender_dragon,tag=!CustomPetDragon] run execute at @a[distance=..100] run summon tnt ~ ~105 ~ {Fuse:100}

#execute as @e[type=ender_dragon] at @s run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 8 0.65
kill @e[type=minecraft:dragon_fireball]

execute as @e[type=phantom] run effect give @s instant_damage 1 0

execute as @a[scores={firstaidLvl=8..,thirst=16..}] run effect give @s regeneration 1 2

# KCLagRemoval
#kill @e[type=item,nbt={Item:{id:"minecraft:raw_gold_block"}}]


effect give @e[type=horse] regeneration 3 2 true
scoreboard players add @a shields 0
execute at @a if entity @e[type=boat,distance=..2] run tellraw @p {"text": "Your boat broke!","color": "red"}
execute at @a if entity @e[type=boat,distance=..2] run give @p oak_slab 3
execute at @a if entity @e[type=boat,distance=..2] run give @p stick 3
execute at @a if entity @e[type=boat,distance=..2] run damage @p 20 cactus

kill @e[type=boat]

