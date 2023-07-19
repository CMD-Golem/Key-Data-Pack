#setup
summon minecraft:marker ~ ~ ~ {Tags:["keylock_container","keylock_entity"]}
scoreboard players operation @e[tag=keylock_container,distance=..0.1] keylock = @s keylock
execute as @e[tag=keylock_container,distance=..0.1] run function keylock:container/lock/store

execute if entity @s[type=player] run function keylock:container/lock/player
execute if entity @s[type=marker] run function keylock:container/lock/parent

# #password
# execute if score #key_name keylock matches 1 run data modify entity @e[tag=keylock_container,distance=..0.1,limit=1] data.password set from entity @s SelectedItem.tag.display.Name
# execute if score #key_name keylock matches 1 as @e[tag=keylock_container,distance=..0.1,nbt={data:{password:'{"text":"Key","italic":false}'}}] run data merge entity @s {data:{password:''}}

# #store lockers name
# item modify entity @s weapon.mainhand keylock:copy_name
# data modify entity @e[tag=keylock_container,distance=..0.1,limit=1] CustomName set from entity @s SelectedItem.tag.display.Lore[0]
# item modify entity @s weapon.mainhand keylock:delete_lore

#store block type
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:5s}]}
data modify entity @e[tag=keylock_container,distance=..0.1,limit=1] data.id set from entity @e[type=item,limit=1,distance=..2,nbt={Item:{tag:{display:{Name:'{"color":"#FEFFFE","text":"Container"}'}}}}] Item.id
kill @e[type=item,limit=1,distance=..2,nbt={Item:{tag:{display:{Name:'{"color":"#FEFFFE","text":"Container"}'}}}}]