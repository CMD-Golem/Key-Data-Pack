setblock ~ ~ ~ minecraft:air
tag @s add keylock_isdisplay
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"color":"#FEFFFE","text":"Container"}'}}}}]


execute align xyz run summon block_display ~0.5 ~0.25 ~0.5 {Tags:["keylock_display"],brightness:{sky:0,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Properties:{facing:"south"}},Rotation:[0F,0F]}

#restore block
data modify entity @e[tag=keylock_display,sort=nearest,limit=1] block_state.Name set from entity @s data.id
execute unless score @s keylock_craft matches 0..270 run data modify entity @e[tag=keylock_display,sort=nearest,limit=1] block_state.Properties.facing set from entity @s data.facing
execute if score @s keylock_craft matches 0..270 store result entity @e[tag=keylock_display,sort=nearest,limit=1] Rotation[0] float 1 run scoreboard players get @s keylock_craft
