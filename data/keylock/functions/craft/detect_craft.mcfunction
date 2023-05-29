advancement revoke @s only keylock:recipe
recipe take @a keylock:recipe

execute unless entity @s[tag=keylock_craft] run scoreboard players reset @s keylock_craft
scoreboard players add @s keylock_craft 1
tag @s add keylock_craft


schedule function keylock:craft/craft 2t replace