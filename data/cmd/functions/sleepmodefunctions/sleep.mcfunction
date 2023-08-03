
schedule clear cmd:cmd
schedule clear cmd:sec
schedule clear cmd:sec2
schedule clear cmd:2tick
schedule clear cmd:tensec
schedule clear cmd:30sec
schedule clear cmd:10tick
schedule clear cmd:5sec
schedule clear cmd:calcstats

tellraw @a {"text": "Server Error: Sleep function called\nDescription: The server is in sleep mode. Sleep mode triggers when 0 players are online. Since you are seeing this message, the server most likely has more than 0 players. Please contact Kevcore about this error.","color": "red"}
say Server is now sleeping...

scoreboard players set Sleeping sleepModeVar 1