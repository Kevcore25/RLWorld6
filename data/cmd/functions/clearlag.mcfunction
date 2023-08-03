# Tag every entity u want with "CLsafe" if you dont wanna remove it
tag @e[tag=important] add CLsafe
# tag @e[type=villager] add CLsafe

# Example of tagging a specific item: (i think spaces r fine inside {})
tag @e[type=item,nbt={Item:{id:   "minecraft:command_block"   }}] add CLsafe

# To partially follow MC Datapack's Official Conventions
tag @e[tag=global.ignore] add CLsafe
tag @e[tag=global.ignore.kill] add CLsafe

kill @e[type=!player,tag=!CLsafe]
kill @e[type=item,tag=!CLsafe]

# Broadcast to all RLWorld players
tellraw @a {"text":"RLWorld Notice:\nEntities are cleared","color": "green"}

debug stop
debug start

execute as @e[type=interaction,tag=reviveuser] at @s unless entity @a[distance=..1] run kill @s
