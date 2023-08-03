#damage @e[type=!player,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] 13 magic
playsound block.metal.break player @s ~ ~ ~ 3 0

execute at @e[type=!player,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run particle block redstone_block ~ ~0.5 ~ 0.1 0.5 0.1 0 100
execute at @e[type=!player,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run summon armor_stand ~ ~1.5 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"CRITICAL","color":"#FAAAFA"}',Tags:[ReactionText]}

# divide value
scoreboard players set criticalsValue doDmgCriticals 10

#scoreboard players set @s criticalsTemp 0 
scoreboard players operation @s criticalsTemp = @s doDmgCriticals
scoreboard players operation @s criticalsTemp /= criticalsValue doDmgCriticals

execute store result score @e[type=!player,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] criticalsTemp run data get entity @e[type=!player,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] Health


scoreboard players operation @e[type=!player,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] criticalsTemp -= @s criticalsTemp


execute store result entity @e[type=!player,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] Health double 1 run scoreboard players get @e[type=!player,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] criticalsTemp 


execute store result score @e[type=!player,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] criticalsTemp run data get entity @s Health

execute as @e[type=!player,nbt={HurtTime:10s},distance=..10,limit=1,sort=nearest] run function cmd:showhealth 
