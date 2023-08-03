execute if block ~ ~ ~ water[level=0] at @s run execute as @a[distance=..7.5,sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:bucket"}}] run item replace entity @s weapon.mainhand with water_bucket
execute if block ~ ~ ~ lava[level=0] at @s run execute as @a[distance=..7.5,sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:bucket"}}] run item replace entity @s weapon.mainhand with lava_bucket
fill ~ ~ ~ ~ ~ ~ polished_blackstone_button[face=floor,powered=true] replace
kill @s