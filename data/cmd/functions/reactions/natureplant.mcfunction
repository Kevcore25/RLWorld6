scoreboard objectives add natureplanttime dummy

summon block_display ~-2.5 ~ ~-2.5 {Tags:["natureCore","naturePlant","noondeath"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},block_state:{Name:"minecraft:flowering_azalea"}}

execute positioned ~-2.5 ~ ~-2.5 run scoreboard players add @e[type=block_display,tag=naturePlant,distance=..1] natureplanttime 0
execute positioned ~-2.5 ~ ~-2.5 run scoreboard players operation @e[type=block_display,tag=naturePlant,distance=..1,scores={natureplanttime=0}] ARem = @p[distance=..7] ARem
execute positioned ~-2.5 ~ ~-2.5 run scoreboard players add @e[type=block_display,tag=naturePlant,distance=..1,scores={natureplanttime=0,ARem=0}] ARem 0

execute positioned ~-2.5 ~ ~-2.5 run scoreboard players set @e[type=block_display,tag=naturePlant,distance=..1,scores={natureplanttime=0,ARem=0}] natureplanttime 51
execute positioned ~-2.5 ~ ~-2.5 run scoreboard players set @e[type=block_display,tag=naturePlant,distance=..1,scores={natureplanttime=0,ARem=1}] natureplanttime 61
execute positioned ~-2.5 ~ ~-2.5 run scoreboard players set @e[type=block_display,tag=naturePlant,distance=..1,scores={natureplanttime=0,ARem=2}] natureplanttime 71
execute positioned ~-2.5 ~ ~-2.5 run scoreboard players set @e[type=block_display,tag=naturePlant,distance=..1,scores={natureplanttime=0,ARem=3}] natureplanttime 81
execute positioned ~-2.5 ~ ~-2.5 run scoreboard players set @e[type=block_display,tag=naturePlant,distance=..1,scores={natureplanttime=0,ARem=4}] natureplanttime 91
execute positioned ~-2.5 ~ ~-2.5 run scoreboard players set @e[type=block_display,tag=naturePlant,distance=..1,scores={natureplanttime=0,ARem=5}] natureplanttime 101
execute positioned ~-2.5 ~ ~-2.5 run scoreboard players set @e[type=block_display,tag=naturePlant,distance=..1,scores={natureplanttime=0,ARem=6}] natureplanttime 111
execute positioned ~-2.5 ~ ~-2.5 run scoreboard players set @e[type=block_display,tag=naturePlant,distance=..1,scores={natureplanttime=0,ARem=7}] natureplanttime 121
execute positioned ~-2.5 ~ ~-2.5 run scoreboard players set @e[type=block_display,tag=naturePlant,distance=..1,scores={natureplanttime=0,ARem=8..}] natureplanttime 131

summon armor_stand ~ ~1.15 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Nature Plant","color":"#00AA00"}',Tags:[ReactionText]}


# remove bloom core
kill @s[tag=natureCore]
