execute at @e[type=marker, limit=1] run tp ~ ~ ~
gamemode survival
kill @e[type=marker, limit=1]
scoreboard players reset @s return
scoreboard players enable @p spectator
forceload remove ~ ~