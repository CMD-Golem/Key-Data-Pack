# as player who opened a door at door
execute as @e[tag=keylock_trapgate,distance=..0.1] run function keylock:trapgate/replace_broken with entity @s data.block
execute as @e[tag=keylock_trapgate,distance=..0.1] run tag @s add keylock_closed

# not your trapgate
execute if score #message keylock matches 1 run tellraw @s [{text:"Block is locked by "},{selector:"@e[tag=keylock_trapgate,distance=..0.1,limit=1]"}]
execute unless score #message keylock matches 1 run title @s actionbar [{text:"Block is locked by "},{selector:"@e[tag=keylock_trapgate,distance=..0.1,limit=1]"}]
