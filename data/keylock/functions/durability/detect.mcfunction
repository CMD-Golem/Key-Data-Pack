execute store result score @s keylock_craft run data get entity @s Item.components.minecraft:damage

execute if score @s keylock_craft matches 1.. run function keylock:durability/repair
