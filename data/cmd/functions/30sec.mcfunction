scoreboard players add @a rank. 0
scoreboard players add @a exp 3
schedule function cmd:30sec 30s replace
effect clear @a mining_fatigue 
effect give @a mining_fatigue 10 1
scoreboard players add @a[gamemode=survival,nbt=!{RootVehicle:{}}] thirst. 750
execute as @a[scores={thirst=..-1}] run scoreboard players set @s thirst 0

scoreboard players add @a peachLimit 0


execute at @e[type=phantom,tag=stormofwater] run summon drowned
execute at @e[type=phantom,tag=stormofwater] run summon drowned
execute at @e[type=phantom] run summon drowned
execute at @e[type=phantom,tag=stormofwater] run execute at @a[distance=..128] if block ~ ~ ~ water run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 ice keep
execute at @e[type=phantom,tag=stormofwater] run execute at @a[distance=..128] if block ~ ~ ~ water run fill ~10 ~11 ~10 ~-10 ~-10 ~-10 ice replace water
execute at @e[type=phantom,tag=stormofwater] run fill ~15 ~15 ~15 ~-15 ~15 ~-15 air replace #base_stone_overworld
execute at @e[type=phantom,tag=stormofwater] run fill ~15 ~15 ~15 ~-15 ~15 ~-15 air replace grass_block
execute at @e[type=phantom,tag=stormofwater] run fill ~15 ~15 ~15 ~-15 ~15 ~-15 air replace dirt
execute at @e[type=phantom,tag=stormofwater] run fill ~15 ~15 ~15 ~-15 ~15 ~-15 air replace water

#execute at @e[type=phantom] run fill ~15 ~ ~15 ~-15 ~2 ~-15 gravel
execute at @e[type=phantom,tag=stormofwater] run execute at @a[distance=..50] run fill ~1 ~6 ~1 ~-1 ~4 ~-1 gravel keep



tellraw @a[tag=debuger] {"text":"30sec.mcfunction ran","color":"gray"}

#execute as @a at @s if block ~ ~ ~ water run summon evoker_fangs ~ ~0.5 ~


