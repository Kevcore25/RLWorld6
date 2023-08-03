advancement revoke @s only cmd:hurtentity



execute as @s[nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run scoreboard players set @e[type=!player,nbt={HurtTime:10s},distance=..64,limit=1,sort=nearest] puncturedtime 40
execute as @s[nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run attribute @e[type=!player,nbt={HurtTime:10s},distance=..64,limit=1,sort=nearest] generic.armor base set -5
execute as @s[nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run attribute @e[type=!player,nbt={HurtTime:10s},distance=..64,limit=1,sort=nearest] generic.armor_toughness base set -5
execute as @s[nbt={SelectedItem:{id:"minecraft:bow"}}] at @s at @e[type=!player,nbt={HurtTime:10s},distance=..64,limit=1,sort=nearest] run summon armor_stand ~ ~1.3 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"🏹 Puncture","color":"#DDDDDD"}',Tags:[ReactionText]}


