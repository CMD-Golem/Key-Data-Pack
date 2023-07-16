execute if entity @s[tag=keylock_air] run setblock ~ -64 ~ minecraft:air
execute if entity @s[tag=keylock_bedrock] run setblock ~ -64 ~ minecraft:bedrock

tag @s remove keylock_clear_support

execute if entity @s[tag=keylock_must_kill] run kill @s