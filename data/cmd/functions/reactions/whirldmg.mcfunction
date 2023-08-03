# PARTICLE
particle minecraft:dust 0.5 1 0.5 1 ~ ~0.5 ~ 0.2 0.5 0.2 0 200

# DMG
execute if entity @p[distance=..7,scores={ARatk=1}] run damage @s 2 magic by @p
execute if entity @p[distance=..7,scores={ARatk=2}] run damage @s 2.5 magic by @p
execute if entity @p[distance=..7,scores={ARatk=3}] run damage @s 3 magic by @p
execute if entity @p[distance=..7,scores={ARatk=4..}] run damage @s 3.5 magic by @p
damage @s 1.5 magic