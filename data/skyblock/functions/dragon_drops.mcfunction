summon minecraft:item 3 65 0 {Item:{id: "minecraft:elytra", Count: 1b}}
summon minecraft:item 3 65 0 {Item:{id: "minecraft:dragon_head", Count: 1b}}
advancement revoke @a only skyblock:dragon_kill

scoreboard players operation @s dragon_kills += 1 constant 
execute if score @s dragon_kills matches 10 run advancement grant @s only skyblock:end/dragon_slayer
