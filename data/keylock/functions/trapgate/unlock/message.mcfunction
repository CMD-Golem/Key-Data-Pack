execute if score @s keylock_count matches 1.. run scoreboard players remove @s keylock_count 1
execute if score #world keylock_count matches 1.. run scoreboard players remove #world keylock_count 1

playsound minecraft:block.iron_door.open block @s ~ ~ ~ 10 0.5
execute unless score #message keylock matches 1 run title @s actionbar {"text":"Block has been unlocked"}
execute if score #message keylock matches 1 run tellraw @s {"text":"Block has been unlocked"}