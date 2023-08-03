# schedule function cmd:movements 1t replace
# execute as @a[scores={lv=1..}] run scoreboard players set @s Timer 0
# execute as @a[scores={lv=1..}] run tellraw @s [{"text":"Did you change your version?\nRetake the test ","color":"aqua"},{"text":"here","underlined": true,"hoverEvent":{"action":"show_text","contents":[{"text":"(Helps correct things in our datapack)","color":"aqua"}]},"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 111100"}}]

# # tellraw @a[tag=debuger] {"text":"main.mcfunction (afk folder) ran","color":"gray"}

# # execute as @a[scores={Sneak=1..}] at @s if block ~ ~-1 ~ structure_block[mode=data] run playsound minecraft:block.stone.break block @a
# execute as @a[scores={Sneak=1..}] at @s if block ~ ~-1 ~ structure_block[mode=data] run summon item ~ ~ ~ {Item:{id:"minecraft:structure_block",Count:1b}}
# execute as @a[scores={Sneak=1..}] at @s if block ~ ~-1 ~ structure_block[mode=data] run setblock ~ ~-1 ~ air destroy
# execute as @a[scores={Sneak=1..,noAITime=1..,stamina=3..}] at @s if block ~ ~ ~ #snow run setblock ~ ~ ~ air
# execute as @a[scores={Sneak=1..,noAITime=1..,stamina=3..}] at @s run effect clear @s slowness
# execute as @a[scores={Sneak=1..,noAITime=1..,stamina=3..}] at @s run effect clear @s unluck
# execute as @a[scores={noAITime=1..}] at @s run damage @s 0.01 freeze
# execute as @a[scores={Sneak=1..,noAITime=1..,stamina=3..},tag=unshift] at @s run scoreboard players remove @s noAITime 5

# tag @a[scores={Sneak=..0}] add unshift
# tag @a[scores={Sneak=1..}] remove unshift
# tag @a[scores={Sneak=0}] remove waypointed

# execute as @a[scores={dodgeCD=3}] at @s run effect clear @s resistance
# execute as @a[scores={dodgeCD=3}] at @s run effect clear @s slowness
# execute as @a[scores={dodgeCD=1,Sneak=0}] at @s run scoreboard players remove @s dodgeCD 1
# execute as @a[scores={dodgeCD=2..}] at @s run scoreboard players remove @s dodgeCD 1

# scoreboard players add @a dodgeCD 0
# # execute as @a[scores={Sneak=1..,dodgeCD=0},nbt=!{ActiveEffects:[{Id:11b}]}] at @s if block ~ ~-0.2 ~ air run tellraw @s {"text":"Cannot dodge while in the air!","color":"red"}
# execute as @a[scores={Sneak=1..,dodgeCD=0},nbt=!{ActiveEffects:[{Id:11}]}] at @s run scoreboard players set @s dodgeCD 8
# #execute as @a[scores={Sneak=1,dodgeCD=10},nbt=!{ActiveEffects:[{Id:11b}]}] at @s run effect give @s slowness 1 1 true 
# execute as @a[scores={Sneak=1..,dodgeCD=8},nbt=!{ActiveEffects:[{Id:11}]}] at @s unless block ~ ~-0.2 ~ air run effect give @s resistance 1 7 true 
# execute as @a[scores={Sneak=1..,dodgeCD=8}] at @s run scoreboard players remove @s stamina 2
# execute as @a[scores={Sneak=1..,dodgeCD=8}] at @s run tag @s add staminachange

# execute as @a[scores={dodgeCD=4..},nbt={HurtTime:10s}] at @s run scoreboard players add @s coins 10
# execute as @a[scores={dodgeCD=4..},nbt={HurtTime:10s}] at @s run scoreboard players add @s stamina 3
# #execute as @a[scores={dodgeCD=4..},nbt={HurtTime:10s}] at @s run tellraw @s ["",{"text":"+10 KCoins (Dodge | Now ","color":"gold"},{"score":{"name":"@s","objective":"coins"},"color":"green"},{"text":" KCoins","color":"light_purple"},{"text":")","color":"gold"}]

# #scoreboard players add @a[tag=!AFKBypass] Timer 1
# # execute as @a[scores={Timer=120..}] at @s run kick @s KevDetect - Idle
# # execute as @a[scores={Timer=110..115}] at @s run title @s title {"text":"AFK Detected!","color":"red","bold":true}
# # execute as @a[scores={Timer=110..115}] at @s run title @s times 0 15 20
# # execute as @a[scores={Timer=115}] at @s run title @s subtitle {"text":"You will be kicked in 5 seconds!","color":"light_purple","bold":false}
# # execute as @a[scores={Timer=116}] at @s run title @s subtitle {"text":"You will be kicked in 4 seconds!","color":"light_purple","bold":false}
# # execute as @a[scores={Timer=117}] at @s run title @s subtitle {"text":"You will be kicked in 3 seconds!","color":"light_purple","bold":false}
# # execute as @a[scores={Timer=118}] at @s run title @s subtitle {"text":"You will be kicked in 2 seconds!","color":"light_purple","bold":false}
# # execute as @a[scores={Timer=119}] at @s run title @s subtitle {"text":"You will be kicked in 1 second!","color":"light_purple","bold":false}
# # execute as @a[scores={Timer=120..}] at @s run tellraw @s {"text":"Something went wrong. Error code 104","color":"red","bold":false}

# scoreboard players reset @a[scores={lv=1..}] lv
# # execute as @e[type=!player] at @s if block ~ ~-1 ~ coarse_dirt run tp @s ~ ~-0.001 ~
# # execute as @e[type=!player] at @s if block ~ ~-1 ~ oak_leaves run tp @s ~ ~-0.001 ~
# # execute as @e[type=item] at @s if block ~ ~-1 ~ coarse_dirt run tp @s ~ ~-1 ~

# #execute as @a[scores={Sneak=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-0.5 ~

# execute as @a[scores={Jump=1..}] run scoreboard players remove @s stamina. 5000
# execute as @a[scores={Jump=1..}] run scoreboard players add @s thirst. 25
# execute as @a[scores={Run=1..}] run tag @s add staminachange
# execute as @a[scores={Jump=1..}] run tag @s add staminachange
# execute as @a[scores={Swim=1..}] run tag @s add staminachange
# execute as @a[scores={WalkWater=1..}] run tag @s add staminachange
# execute as @a[scores={WalkUnderWater=1..}] run tag @s add staminachange
# execute as @a[scores={Run=1..}] run scoreboard players add @s thirst. 1

# execute as @a[scores={Run=1..}] run scoreboard players remove @s stamina. 101
# execute as @a[scores={Swim=1..}] run scoreboard players remove @s stamina. 191


# execute as @a[scores={Walk=1..}] run scoreboard players add @s thirst. 1
# execute as @a[scores={Walk=1..}] run scoreboard players remove @s stamina. 1

# execute as @a[scores={WalkWater=1..}] at @s if block ~ ~-1 ~ water run scoreboard players remove @s stamina. 301
# execute as @a[scores={WalkWater=1..}] at @s unless block ~ ~-1 ~ water run scoreboard players remove @s stamina. 101

# execute as @a[scores={WalkUnderWater=1..}] run scoreboard players remove @s stamina. 221

# execute as @a[scores={flying=1..}] run tag @s add staminachange
# execute as @a[scores={flying=1..}] run scoreboard players remove @s stamina. 1

# execute as @a[nbt={FallFlying:1b},scores={tempElytra=..0}] run tag @s add noelytra
# execute as @a[nbt={FallFlying:1b},scores={tempElytra=..0}] run item replace block 0 0 0 container.0 from entity @s armor.chest
# execute as @a[nbt={FallFlying:1b},scores={tempElytra=..0}] run item replace entity @s armor.chest with air

# execute as @a[scores={tempElytra=1..},tag=noelytra] run item replace entity @s armor.chest from block 0 0 0 container.0
# execute as @a[scores={tempElytra=1..},tag=noelytra] run item replace block 0 0 0 container.0 with air
# execute as @a[scores={tempElytra=1..},tag=noelytra] run tag @s remove noelytra


# #execute as @a[nbt={FallFlying:1b},scores={stamina=..0,tempElytra=..0}] run schedule function cmd:survival 1t

# # /item replace entity @s armor.chest from block 0 0 0 container.0
# # /item replace block 0 0 0 container.0 from entity @s armor.chest


# execute as @a[nbt=!{FallFlying:1b},scores={stamina=1..,tempElytra=..99,tempElytra.=..0}] run scoreboard players add @s tempElytra 2
# execute as @a[nbt=!{FallFlying:1b},scores={tempElytra.=1..}] run scoreboard players remove @s tempElytra. 1

# scoreboard players set @a[scores={Walk=1..}] Timer 0
# scoreboard players set @a[scores={Fly=1..}] Timer 0
# scoreboard players set @a[scores={Run=1..}] Timer 0
# scoreboard players set @a[scores={Swim=1..}] Timer 0
# scoreboard players set @a[scores={Jump=1..}] Timer 0
# scoreboard players set @a[scores={Sneak=1..}] Timer 0
# scoreboard players set @a[scores={WalkWater=1..}] Timer 0
# scoreboard players set @a[scores={WalkUnderWater=1..}] Timer 0
# scoreboard players set @a[scores={Minecart=1..}] Timer 0
# scoreboard players set @a[scores={Row=1..}] Timer 0
# scoreboard players set @a[scores={RidePig=1..}] Timer 0
# scoreboard players set @a[scores={Walk=1..}] Walk 0
# scoreboard players set @a[scores={Fly=1..}] Fly 0
# scoreboard players set @a[scores={Run=1..}] Run 0
# scoreboard players set @a[scores={Swim=1..}] Swim 0
# scoreboard players set @a[scores={Jump=1..}] Jump 0
# scoreboard players set @a[scores={Sneak=1..}] Sneak 0
# scoreboard players set @a[scores={WalkWater=1..}] WalkWater 0
# scoreboard players set @a[scores={WalkUnderWater=1..}] WalkUnderWater 0
# scoreboard players set @a[scores={Minecart=1..}] Minecart 0
# scoreboard players set @a[scores={Row=1..}] Row 0
# scoreboard players set @a[scores={RidePig=1..}] RidePig 0
# scoreboard players set @a[scores={flying=1..}] flying 0

# #reset

# #  1 deepslate = 1.5 stone 
# #  1 ds = 4 bk 
# #  1 s = 3 bk
# # 2 ds = 3 s  
# # 2x4=8 [ ! 3x3=9 ! ]

