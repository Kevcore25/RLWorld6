# 5 min fuinction
# Kevcore 06/12/2023

# run function
schedule function cmd:5min 300s



# mb stoprm
execute if entity @r[scores={myrandom=5}] run function cmd:mobstorm
execute if entity @r[scores={myrandom=6..8}] run function cmd:rainfire
execute if entity @r[scores={myrandom=3..4}] run function cmd:thunder
execute if entity @r[scores={myrandom=1..2}] run function cmd:sandstorm