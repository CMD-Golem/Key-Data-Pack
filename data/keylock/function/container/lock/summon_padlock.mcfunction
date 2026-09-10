#unused
execute if score @s keylock_use matches 1
execute if score @s keylock_use matches 3 positioned ~-0.45 ~0.4 ~0.5 run summon item_display ~ ~ ~ {Tags:["keylock_padlock"],Rotation:[0F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]},item:{id:"minecraft:tripwire_hook",components:{"minecraft:custom_model_data":{strings:["cmdg_padlock"]}}}}


execute if score @s keylock_craft matches 0..270 store result entity @e[tag=keylock_display,sort=nearest,limit=1] Rotation[0] float 1 run scoreboard players get @s keylock_craft
