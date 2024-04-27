#setup
summon minecraft:marker ~ ~ ~ {Tags:["keylock_door","keylock_entity"],data:{block:{facing:"",hinge:"",open:",open=false"}}}
scoreboard players operation @e[tag=keylock_door,distance=..0.1] keylock = @s keylock
execute as @e[tag=keylock_door,distance=..0.1] run function keylock:door/lock/store

#password
execute if score #key_name keylock matches 1 run data modify entity @e[tag=keylock_door,distance=..0.1,limit=1] data.password set from entity @s SelectedItem.components.minecraft:custom_name

#store lockers name
item modify entity @s weapon.mainhand keylock:copy_name
data modify entity @e[tag=keylock_door,distance=..0.1,limit=1] CustomName set from entity @s SelectedItem.components.minecraft:lore[0]
item modify entity @s weapon.mainhand keylock:delete_lore

# close door
execute if predicate keylock:get_type/open as @e[tag=keylock_door,distance=..0.1] run function keylock:door/lock/close