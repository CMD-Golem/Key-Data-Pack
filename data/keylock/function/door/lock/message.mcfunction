scoreboard players add @s keylock_count 1
scoreboard players add #world keylock_count 1

playsound minecraft:block.iron_door.close block @s ~ ~ ~ 10 0.5
execute unless score #message keylock matches 1 run title @s actionbar {"text":"Door has been locked"}
execute if score #message keylock matches 1 run tellraw @s {"text":"Door has been locked"}

execute if score #damage keylock matches 1..2 run function keylock:durability/durability
