#Make the main skyblock and world spawn 
execute in overworld run setworldspawn 5 257 5 -40
gamerule spawnRadius 0
forceload add 0 0
execute in overworld run setblock 3 253 5 structure_block{ignoreEntities:0b,posX:0,mode:"LOAD",name:"skyblock:the_skyblock"}
execute in overworld run setblock 3 252 5 redstone_block
execute in overworld run setblock 3 252 5 air
execute in overworld run setblock 3 253 5 air
forceload remove 0 0

#To make the end portal in the end spawn at the right height, we have to
#give it a block to start on
execute in the_end run forceload add -1 -1 1 1 
execute in the_end run setblock 0 60 0 bedrock
execute in the_end run forceload remove -1 -1 1 1 