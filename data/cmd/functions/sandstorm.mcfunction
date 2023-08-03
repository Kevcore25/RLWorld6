tellraw @a {"text": "EVENT\nSANDSTORM!!!\nWATCH OUT!","color":"red"}
execute at @a if biome ~ ~ ~ desert run fill ~40 90 ~40 ~-40 90 ~-40 sand keep
execute at @a if biome ~ ~ ~ wooded_badlands run fill ~40 90 ~40 ~-40 90 ~-40 sand keep