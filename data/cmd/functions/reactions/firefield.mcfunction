summon area_effect_cloud ~ ~1 ~ {Tags:["natureCore","fireField"],Particle:"block fire",ReapplicationDelay:20,Radius:6f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:160,DurationOnUse:0f,WaitTime:0,Color:16755200,Effects:[{Id:32,Amplifier:0b,Duration:10,ShowParticles:0b}]}
summon area_effect_cloud ~ ~ ~ {Tags:["natureCore","fireField"],Particle:"block fire",ReapplicationDelay:20,Radius:6f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:160,DurationOnUse:0f,WaitTime:0,Color:16755200,Effects:[{Id:32,Amplifier:0b,Duration:10,ShowParticles:0b}]}
summon area_effect_cloud ~ ~-1 ~ {Tags:["natureCore","fireField"],Particle:"block fire",ReapplicationDelay:20,Radius:6f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:160,DurationOnUse:0f,WaitTime:0,Color:16755200,Effects:[{Id:32,Amplifier:0b,Duration:10,ShowParticles:0b}]}


damage @s[tag=natureCore] 65535 dragon_breath by @e[type=!player,limit=1]