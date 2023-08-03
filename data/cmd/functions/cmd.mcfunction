# Make into loop. A schedule allows the removal of cmd:cmd for testing purposes
schedule function cmd:cmd 1t replace


tag @e[type=armor_stand,tag=waypointEntity] remove waypointer
execute as @a[scores={Sneak=1..},tag=!waypointed] at @s if score @e[type=armor_stand,tag=waypointEntity,limit=1,sort=nearest,distance=..1] tpa.pid = @s tpa.pid run function cmd:cmd/waypoints

execute as @a[tag=!spectating] at @s run function cmd:cmdplayers

# ## Spawn TP
# scoreboard players enable @a spawn
# execute as @a[tag=!spectating] if entity @s[scores={spawn=1..}] at @s[scores={spawncooldown=0}] run tp -300 60 -300
# execute as @a[tag=!spectating] if entity @s[scores={spawn=1..}] at @s[scores={spawncooldown=0}] run tellraw @s {"text":"Teleported to spawn!","color":"light_purple"}
# execute as @a[tag=!spectating] if entity @s[scores={spawn=1..}] at @s[scores={spawncooldown=1..}] run tellraw @s [{"text":"You can teleport in ","color":"red"},{"score":{"name":"@s","objective":"spawncooldown"},"color":"red"},{"text":" seconds","color":"red"}]
# execute as @a[tag=!spectating] if entity @s[scores={spawn=1..}] at @s[scores={spawncooldown=0}] run scoreboard players set @s spawncooldown 300
# scoreboard players set @a spawn 0 


scoreboard players remove @e[scores={noAITime=0..}] noAITime 1

## Freeze. WIP
execute as @e[type=block_display,tag=freezeDisplay] at @s unless entity @e[distance=..1,scores={noAITime=1..}] run kill @s
execute at @a[tag=!spectating] as @e[scores={noAITime=1..100},distance=..24] at @s unless entity @e[type=block_display,distance=..1,tag=freezeDisplay] run summon block_display ~-0.3 ~ ~-0.3 {Tags:["freezeDisplay"],interpolation_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,2.2f,0.6f]},block_state:{Name:"minecraft:ice"}}
execute at @a[tag=!spectating] as @e[scores={noAITime=100..},distance=..24] at @s unless entity @e[type=block_display,distance=..1,tag=freezeDisplay] run summon block_display ~-0.3 ~ ~-0.3 {Tags:["freezeDisplay"],interpolation_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,2.2f,0.6f]},block_state:{Name:"minecraft:blue_ice"}}

execute at @a[tag=!spectating] as @e[scores={noAITime=0},distance=..24] run data merge entity @s {NoAI:0b,Silent:0b}
execute at @a[tag=!spectating] as @e[scores={noAITime=1..},distance=..24,type=!stray] run data merge entity @s {NoAI:1b,Silent:1b,ignited:0b}

## Blazes break blocks
execute at @e[type=small_fireball,tag=!burningFireball] unless block ~ ~ ~ quartz_block unless block ~ ~ ~ red_stained_glass run setblock ~ ~ ~ fire destroy
execute at @e[type=small_fireball,tag=!burningFireball] unless block ^ ^ ^1 quartz_block unless block ^ ^ ^1 red_stained_glass run setblock ^ ^ ^1 fire destroy
execute at @e[type=small_fireball,tag=!burningFireball] unless block ^ ^ ^-1 quartz_block unless block ^ ^ ^-1 red_stained_glass run setblock ^ ^ ^-1 fire destroy


## fire
execute as @a[tag=!spectating] at @s[tag=!cf] unless entity @s[nbt={Fire:-20s}] unless entity @s[nbt={Fire:0s}] unless block ~ ~ ~ water run effect give @s hero_of_the_village 4 0 true
execute as @a[tag=!spectating] at @s[tag=!cf] at @s unless entity @s[nbt={Fire:-20s}] unless entity @s[nbt={Fire:0s}] unless block ~ ~ ~ water run damage @s 1 on_fire
execute at @a as @e[distance=..24,scores={FastFire=1..}] run damage @s 1 on_fire 
execute at @a as @e[distance=..24,scores={FastFire=1..}] run data merge entity @s {Fire:20s}
execute at @a as @e[distance=..24,scores={FastFire=1..}] run scoreboard players remove @s FastFire 1

execute as @e[type=dragon_fireball] at @s run function cmd:dragonbreath
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run function cmd:dragonbreath
# #give @s minecraft:lingering_potion{Duration:1,CustomPotionEffects:[{Id:27,Duration:1}],CustomPotionColor:2171169,display:{Name:'[{"text":"Bomb","color":"light_green","italic": false}]'}}



# execute as @e[type=villager,tag=RMBdetection] run data merge entity @s {Fire:0s}
# execute as @a[tag=!spectating] if entity @s[nbt={SelectedItem:{tag:{Peach:1}}}] at @s positioned ~ ~0.2 ~ run tp @e[type=villager,tag=RMBdetection,distance=0..] ^ ^ ^2
# execute as @a[tag=!spectating] if entity @s[nbt={SelectedItem:{tag:{Peach:1}}},scores={Walk=0,Run=0}] at @s positioned ~ ~0.2 ~ run tp @e[type=villager,tag=RMBdetection,distance=0..] ^ ^ ^
# execute as @a[tag=!spectating] if entity @s[nbt={SelectedItem:{tag:{Peach:1}}},scores={Jump=1..,Run=1..}] at @s positioned ~ ~1 ~ run tp @e[type=villager,tag=RMBdetection,distance=0..] ^ ^ ^2
#execute as @a[tag=!spectating] if entity @s[nbt={SelectedItem:{tag:{Peach:1}}}] at @s positioned ~ ~0.2 ~ run data modify entity @e[type=villager,tag=RMBdetection,limit=1] Pos set from entity @s Pos
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:15,Fuse:0,CustomName:'[{"text":"TNT Explosion"}]'}
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run kill @s

# execute as @a[tag=!spectating] if entity @s[scores={useVill=1..},nbt={SelectedItem:{tag:{Peach:1}}}] run scoreboard players add @s placeHead 1
# execute as @a[tag=!spectating] if entity @s[scores={useVill=1..},nbt={SelectedItem:{tag:{Peach:1}}}] run clear @s[gamemode=!creative] player_head{Peach:1} 1
# execute as @a[tag=!spectating] if entity @s[scores={placeHead=1..}] at @s run function cmd:peach
execute at @a[tag=!spectating] as @e[nbt={HurtTime:0s},distance=..24,scores={bloomhitamt=1..}] run scoreboard players set @s bloomhitamt 0
execute at @a[tag=!spectating] as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:apple"}}] if entity @r[scores={myrandom=4..9}] run tag @s add nopeach
execute at @a[tag=!spectating] as @e[type=item,nbt={Item:{id:"minecraft:apple"}},tag=!nopeach] run data merge entity @s {Item:{Count:2b,id:"minecraft:player_head",tag:{Peach:1,IncomingHealing:1,display:{Name:'[{"text":"Peaches","italic":false,"color":"aqua"}]',Lore:['[{"text":"When worn: +1 Incoming Healing","italic":false,"color":"gray"}]']},SkullOwner:{Id:[I;-203190900,1315653592,-2004703885,1342631333],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjAwOGU3YTk5ZDIyNGY2NzhkNjdiYjU0ZDZlYWRlYTc2YjMzNzk4YTE5YWUyOTIyNjUxODNmZWFhMjI5MDFjNyJ9fX0="}]}}}}}
# scoreboard players set @a useVill 0
# scoreboard players set @a placeHead 0

scoreboard players remove @e[type=slime,tag=active,tag=natureCore] bloomtime 1
execute as @e[type=slime,tag=active,tag=natureCore,scores={bloomtime=..0}] at @s run function cmd:explodecore


## REACTIONTEXT (NEW)
tp @e[type=text_display, tag=ReactionText, scores={ temp = 10.. }] 0 0 0
kill @e[type=text_display, tag=ReactionText, scores={ temp = 10.. }]
execute as @e[type=text_display,tag=ReactionText] run scoreboard players add @s temp 1
execute as @e[type=text_display,tag=ReactionText] at @s run tp @s ~ ~0.075 ~ 

scoreboard players enable @a stats
execute as @a[scores={stats=1..}] run tellraw @s ["",{"text":"RLWorld Stats:","bold":true,"underlined":true,"color":"light_purple"},{"text":"\n\n"},{"text":"KCoins: ","color":"light_purple"},{"score":{"name":"@s","objective":"coins"},"color":"green"},{"text":"\n\n"},{"text":"Time played (min:sec): ","color":"light_purple"},{"score":{"name":"@s","objective":"timeInMin"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s","objective":"timeInSec"},"color":"green"},{"text":"\n"},{"text":"Total kills: ","color":"light_purple"},{"score":{"name":"@s","objective":"kills"},"color":"green"},{"text":"\nHighest reaction DPS: ","color":"light_purple"},{"score":{"name":"@s","objective":"highestdps"},"color":"green"},{"text":"\n\n"},{"text":"Energy: ","color":"light_purple"},{"score":{"name":"@s","objective":"energy"},"color":"green"},{"text":"/120\n\n","color": "green"},{"text":"Player ID: ","color":"light_purple"},{"score":{"name":"@s","objective":"tpa.pid"},"color":"green"}]
scoreboard players set @a stats 0

# SAPHHIRE
execute at @a as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:lapis_lazuli"}}] unless entity @s[nbt={Item:{tag:{Sapphire:1}}}] run data merge entity @s {Item:{Count:1,id:"minecraft:lapis_lazuli",tag:{Sapphire:1,display:{Name:'[{"text":"Sapphire","italic":false,"color":"green"}]'}}}}

# Fn
function cmd:cmd/fn
execute as @e[type=armor_stand,tag=FN] at @s positioned ~ ~1.4 ~ run damage @e[type=!player,distance=..2.2,limit=1,sort=nearest] 5 player_attack by @p
## ULT
execute as @e[type=armor_stand,tag=SS] at @s run function cmd:cmd/snowstorm
execute as @e[type=armor_stand,tag=rainCloud] at @s run function cmd:cmd/raincloud


# MAY CAUSE LOTS OF LAG
execute at @a[tag=!spectator] as @e[distance=..8,nbt={HurtTime:10s}] run function cmd:showhealth


execute if entity @s[nbt={SelectedItem:{id:"minecraft:glistering_melon_slice"}}] run effect give @s regeneration 2 2

tag @a[gamemode=creative] add creative
tag @a[gamemode=!creative] remove creative

execute at @e[tag=whirlwind] run particle dust 1 1 1 10 ~ ~ ~ 1 1 1 0 3
#  execute at @e[tag=whirlwind] run damage @e[type=!item,distance=..2,limit=1,sort=random] 2 cramming

execute at @e[tag=whirlwind] as @e[distance=..8] run data merge entity @s {NoGravity:1b}
#execute at @e[tag=whirlwind] as @a[distance=..30] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet run tp @s[tag=!whirlwind] ^ ^ ^0.01
#execute at @e[tag=whirlwind] as @a[distance=..10] run effect give @s slow_falling 1 0
# execute at @e[tag=whirlwind] as @e[type=!player,distance=15..20] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet run tp @s[tag=!whirlwind] ^ ^ ^0.05
# execute at @e[tag=whirlwind] as @e[type=!player,distance=10..15] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet run tp @s[tag=!whirlwind] ^ ^ ^0.08
# execute at @e[tag=whirlwind] as @e[type=!player,distance=8..10] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet run tp @s[tag=!whirlwind] ^ ^ ^0.2
# execute at @e[tag=whirlwind] as @e[type=!player,distance=3..8] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet run tp @s[tag=!whirlwind] ^ ^ ^0.3
# execute at @e[tag=whirlwind] as @e[type=!player,distance=..3] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet run tp @s[tag=!whirlwind] ^ ^ ^0.8
#execute at @e[tag=whirlwind] as @e[distance=..3] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet run tp @s[tag=!whirlwind] @e[tag=!whirlwind,sort=nearest,limit=1]
# #execute at @e[tag=whirlwind] as @e[tag=noncreative,distance=..3] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet run tp @s[tag=!whirlwind] ^ ^ ^0.2
# execute at @e[tag=whirlwind] as @a[distance=..20] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet if block ^ ^ ^0.11 air run tp @s[tag=!whirlwind] ^ ^ ^0.01
# execute at @e[tag=whirlwind] as @a[distance=..15] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet if block ^ ^ ^0.13 air run tp @s[tag=!whirlwind] ^ ^ ^0.03
# execute at @e[tag=whirlwind] as @a[distance=..10] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet if block ^ ^ ^0.16 air run tp @s[tag=!whirlwind] ^ ^ ^0.06
# execute at @e[tag=whirlwind] as @a[distance=..8] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet if block ^ ^ ^0.18 air run tp @s[tag=!whirlwind] ^ ^ ^0.08
# execute at @e[tag=whirlwind] as @a[distance=..5] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet if block ^ ^ ^0.23 air run tp @s[tag=!whirlwind] ^ ^ ^0.13
execute at @e[tag=whirlwind] as @e[type=!player,distance=..8] at @s facing entity @e[limit=1,sort=nearest,tag=whirlwind] feet run tp @s[tag=!whirlwind] ^ ^ ^0.1


scoreboard players add @e[tag=whirlwind] timeInSec 1
kill @e[tag=whirlwind,scores={timeInSec=1200..}]

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
#execute as @a[scores={dodgeCD=4..},nbt={HurtTime:10s}] at @s run tellraw @s ["",{"text":"+10 KCoins (Dodge | Now ","color":"gold"},{"score":{"name":"@s","objective":"coins"},"color":"green"},{"text":" KCoins","color":"light_purple"},{"text":")","color":"gold"}]

#scoreboard players add @a[tag=!AFKBypass] Timer 1
# execute as @a[scores={Timer=120..}] at @s run kick @s KevDetect - Idle
# execute as @a[scores={Timer=110..115}] at @s run title @s title {"text":"AFK Detected!","color":"red","bold":true}
# execute as @a[scores={Timer=110..115}] at @s run title @s times 0 15 20
# execute as @a[scores={Timer=115}] at @s run title @s subtitle {"text":"You will be kicked in 5 seconds!","color":"light_purple","bold":false}
# execute as @a[scores={Timer=116}] at @s run title @s subtitle {"text":"You will be kicked in 4 seconds!","color":"light_purple","bold":false}
# execute as @a[scores={Timer=117}] at @s run title @s subtitle {"text":"You will be kicked in 3 seconds!","color":"light_purple","bold":false}
# execute as @a[scores={Timer=118}] at @s run title @s subtitle {"text":"You will be kicked in 2 seconds!","color":"light_purple","bold":false}
# execute as @a[scores={Timer=119}] at @s run title @s subtitle {"text":"You will be kicked in 1 second!","color":"light_purple","bold":false}
# execute as @a[scores={Timer=120..}] at @s run tellraw @s {"text":"Something went wrong. Error code 104","color":"red","bold":false}

#reset

#  1 deepslate = 1.5 stone 
#  1 ds = 4 bk 
#  1 s = 3 bk
# 2 ds = 3 s  
# 2x4=8 [ ! 3x3=9 ! ]

### END OF FUNCTION"

execute positioned 1000 200 1000 if entity @a[distance=..36] run execute as @e[distance=..36,type=small_fireball] run data modify entity @s Owner set from entity @p 


execute positioned 1000 200 1000 if entity @a[distance=..36] run kill @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}},distance=..50]
