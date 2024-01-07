
scoreboard objectives add tf_rc dummy
scoreboard objectives add dead dummy
scoreboard objectives add dragon_kills dummy

# We're going to keep track of how many times the world has loaded,
# it has to do with the way we generate the world.

scoreboard objectives add constant dummy
scoreboard players set 1 constant 1
scoreboard objectives add worldload dummy
scoreboard players operation currentload worldload += 1 constant

# If score currentload worldload is 1, that means the world is 
# being loaded for the first time. We don't want our map generation
# to overwrite the progress that has been made every time we reload  
# the world, so it is important to make the islands only once.

execute if score currentload worldload matches 1 run function skyblock:firstload

# Keeping track of the version of the datapack to be able to give players
# updated books when they get a new version

scoreboard objectives add packversion dummy
execute unless score version packversion matches 6 run function skyblock:update
execute if score version packversion matches ..5 run function skyblock:remove_advancements

scoreboard players set version packversion 6