## Run from skyblock:raycast/start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
scoreboard players set ray dead 0
execute if score .distance tf_rc matches ..800 positioned ^ ^ ^0.01 rotated ~ ~ unless block ~ ~ ~ #skyblock:raycast_pass run function skyblock:collision


scoreboard players add .distance tf_rc 1
execute if score ray dead matches 1 run clear @s ender_eye 1
# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score ray dead matches 0 if score .distance tf_rc matches ..800 positioned ^ ^ ^0.01 rotated ~ ~ if block ~ ~ ~ #skyblock:raycast_pass run function skyblock:raycast
