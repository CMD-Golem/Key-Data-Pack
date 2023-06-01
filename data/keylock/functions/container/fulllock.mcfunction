#setup
summon minecraft:marker ~ ~ ~ {Tags:["keylock_cloud","keylock_new"]}
scoreboard players operation @e[tag=keylock_cloud,distance=..0.1] keylock = @s keylock

execute if score #key_name keylock matches 1 run data modify entity @e[tag=keylock_cloud,distance=..0.1,limit=1] data.password set from entity @s SelectedItem.tag.display.Name
execute if score #key_name keylock matches 1 as @e[tag=keylock_cloud,distance=..0.1,nbt={data:{password:'{"text":"Key","italic":false}'}}] run data merge entity @s {data:{password:''}}

#store lockers name
item modify entity @s weapon.mainhand keylock:copy_name
data modify entity @e[tag=keylock_cloud,distance=..0.1,limit=1] CustomName set from entity @s SelectedItem.tag.display.Lore[0]
item modify entity @s weapon.mainhand keylock:delete_lore

#run locking
execute as @e[tag=keylock_cloud,distance=..0.1] run function keylock:container/lock

#store block type
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify entity @e[tag=keylock_cloud,distance=..0.1,limit=1] data.id set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"color":"#FEFFFE","text":"Container"}'}}}}] Item.id
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"color":"#FEFFFE","text":"Container"}'}}}}]