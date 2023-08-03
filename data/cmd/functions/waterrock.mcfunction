execute if block ~ ~ ~ water[level=0] at @s run execute as @a[distance=..7.5,sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:bucket"}}] run item replace entity @s weapon.mainhand with water_bucket
fill ~ ~ ~ ~ ~ ~ stone_button[face=floor,facing=north] replace
kill @s