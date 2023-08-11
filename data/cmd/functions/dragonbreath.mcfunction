
## END BREATH
# execute at @e[type=dragon_fireball,tag=stop] run effect give @e[distance=..3,nbt=!{RootVehicle:{}}] instant_damage 1
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run effect give @e[distance=..8,tag=!undead,nbt=!{RootVehicle:{}}] instant_damage 1 1
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run effect give @e[distance=..8,tag=undead,nbt=!{RootVehicle:{}}] instant_health 1 1
# execute at @e[type=dragon_fireball] run particle minecraft:dust 3 0 3 1000 ~ ~ ~ 0.5 0.5 0.5 0 3
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~1 ~-1 ~1 ~-1 ~ ~-1 air replace #mineable/shovel
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~2 ~-1 ~2 ~-2 ~1 ~-2 air replace #mineable/hoe
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run particle minecraft:glow_squid_ink ~ ~ ~ 3.5 3.5 3.5 0 10
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run kill @s
# execute as @e[type=dragon_fireball,tag=!stop] store result entity @s power[0] double 0.1 run data get entity @s power[0] 300
# execute as @e[type=dragon_fireball,tag=!stop] store result entity @s power[1] double 0.1 run data get entity @s power[1] 300
# execute as @e[type=dragon_fireball,tag=!stop] store result entity @s power[2] double 0.1 run data get entity @s power[2] 300

## FIRE BREATH
#execute at @e[type=dragon_fireball] run execute as @e[distance=..3,nbt=!{RootVehicle:{}},type=!armor_stand] if entity @s[type=!dragon_fireball] if entity @s[type=!ender_dragon] if entity @s[type=!text_display] if entity @s[type=!area_effect_cloud] run function cmd:reactions/burning

#execute at @e[type=dragon_fireball] run particle minecraft:dust 1 0.6 0 1000 ~ ~ ~ 1 1 1 0.1 10
#execute at @e[type=dragon_fireball] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 fire keep
#execute at @e[type=dragon_fireball] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace water
#execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~3 ~2 ~3 ~-3 ~-2 ~-3 fire keep
#execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~3 ~2 ~3 ~-3 ~-2 ~-3 fire replace #buttons
#execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~3 ~2 ~3 ~-3 ~-2 ~-3 fire replace grass
#execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~3 ~2 ~3 ~-3 ~-2 ~-3 fire replace #inside_step_sound_blocks
#execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..3,nbt=!{RootVehicle:{}},type=!armor_stand] if entity @s[type=!ender_dragon] if entity @s[type=!dragon_fireball] if entity @s[type=!text_display] if entity @s[type=!area_effect_cloud] run function cmd:reactions/radiation
#execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..3,nbt=!{RootVehicle:{}},type=!armor_stand] if entity @s[type=!ender_dragon] if entity @s[type=!dragon_fireball] if entity @s[type=!text_display] if entity @s[type=!area_effect_cloud] run function cmd:reactions/burning

#execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~3 ~2 ~3 ~-3 ~-2 ~-3 fire replace water
#execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..6,nbt=!{RootVehicle:{}}] run damage @s 10 magic by @p
#execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run kill @s


# ## ICE BREATH
execute at @e[type=dragon_fireball] run execute as @e[distance=..6,nbt=!{RootVehicle:{}}] run scoreboard players set @s currentStatus 107

execute at @e[type=dragon_fireball] run execute as @e[distance=..6,nbt=!{RootVehicle:{}}] run damage @s[type=!ender_dragon] 10 magic by @p
execute at @e[type=dragon_fireball] run execute as @e[distance=..6,nbt=!{RootVehicle:{}}] run effect give @s slowness 6 2 true

execute at @e[type=dragon_fireball] run particle minecraft:dust 0 0.75 1 1000 ~ ~ ~ 1 1 1 0.1 10
execute at @e[type=dragon_fireball] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 ice replace water
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~3 ~2 ~3 ~-3 ~-2 ~-3 blue_ice replace #mineable/pickaxe
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~3 ~2 ~3 ~-3 ~-2 ~-3 ice replace water
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~3 ~2 ~3 ~-3 ~-2 ~-3 packed_ice replace #mineable/shovel
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~3 ~2 ~3 ~-3 ~-2 ~-3 packed_ice replace #mineable/axe
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~3 ~2 ~3 ~-3 ~-2 ~-3 ice replace #mineable/hoe
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..6,nbt=!{RootVehicle:{}},type=!armor_stand] if entity @s[type=!ender_dragon] if entity @s[type=!dragon_fireball] if entity @s[type=!area_effect_cloud] if entity @s[type=!text_display] run scoreboard players set @s currentStatus 107
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..6,nbt=!{RootVehicle:{}},type=!armor_stand] if entity @s[type=!ender_dragon] if entity @s[type=!dragon_fireball] if entity @s[type=!area_effect_cloud] if entity @s[type=!text_display] run function cmd:reactions/crisp
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..6,nbt=!{RootVehicle:{}},type=!armor_stand] if entity @s[type=!ender_dragon] if entity @s[type=!dragon_fireball] if entity @s[type=!area_effect_cloud] if entity @s[type=!text_display] run function cmd:reactions/superconduct
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..6,nbt=!{RootVehicle:{}},type=!armor_stand] if entity @s[type=!ender_dragon] if entity @s[type=!dragon_fireball] if entity @s[type=!area_effect_cloud] if entity @s[type=!text_display] run function cmd:reactions/freeze
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..6,nbt=!{RootVehicle:{}},type=!armor_stand] if entity @s[type=!ender_dragon] if entity @s[type=!dragon_fireball] if entity @s[type=!area_effect_cloud] if entity @s[type=!text_display] run scoreboard players set @s noAITime 600
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..6,nbt=!{RootVehicle:{}},type=!armor_stand] if entity @s[type=!ender_dragon] if entity @s[type=!dragon_fireball] if entity @s[type=!area_effect_cloud] if entity @s[type=!text_display] run scoreboard players set @s[tag=!important] noAITime 6000
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..6,nbt=!{RootVehicle:{}},type=!armor_stand] run tellraw @s {"text": "Debuff: Freeze: 30s (By an Ice Dragon)","color": "red","bold": true}
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..6,nbt=!{RootVehicle:{}}] run damage @s 10 magic by @p
execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run kill @s

# ## ICE BREATH

# # EXPLOSION (small) BREATH
# execute at @e[type=dragon_fireball] run particle explosion ~ ~ ~ 0.75 0.75 0.75 0 2
# ## SMALL
# # execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Invulnerable:1b,ExplosionRadius:5}
# ## LARGE
# scoreboard players set @e[distance=..8] currentStatus 106
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run summon creeper ~ ~ ~ {CustomName:'[{"text":"Dragon\'s Explosive Breath"}]',Fuse:0,ignited:1b,Invulnerable:1b,ExplosionRadius:10}
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~7 ~7 ~7 ~-7 ~-8 ~-7 magma_block replace #base_stone_overworld
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~7 ~7 ~7 ~-7 ~-8 ~-7 magma_block replace #base_stone_nether
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run fill ~7 ~7 ~7 ~-7 ~-8 ~-7 magma_block replace end_stone


# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run particle explosion_emitter ~ ~ ~ 2 2 2 0 50
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run particle campfire_signal_smoke ~ ~ ~ 3 3 3 0.05 5000
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run particle large_smoke ~ ~ ~ 3 3 3 0.05 500
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run particle reverse_portal ~ ~ ~ 3 3 3 0.05 500

# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[distance=..8,nbt={RootVehicle:{}}] run damage @s 100 dragon_breath by @p

# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run kill @s
# execute as @e[type=dragon_fireball,tag=!stop] store result entity @s power[0] double 0.1 run data get entity @s power[0] 200
# execute as @e[type=dragon_fireball,tag=!stop] store result entity @s power[1] double 0.1 run data get entity @s power[1] 200
# execute as @e[type=dragon_fireball,tag=!stop] store result entity @s power[2] double 0.1 run data get entity @s power[2] 200

## LAVA
# execute at @e[type=dragon_fireball] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 lava keep
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run execute as @e[type=!dragon_fireball] at @e[type=!item,distance=..5] if entity @s[type=!area_effect_cloud] run fill ~1 ~2 ~1 ~-1 ~-1 ~-1 end_stone
# execute as @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}] at @s run kill @s
