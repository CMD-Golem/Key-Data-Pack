#setup
summon minecraft:marker ~ ~ ~ {Tags:["keylock_cloud","keylock_new","keylock_get_type"]}
scoreboard players operation @e[tag=keylock_new] keylock = @s keylock
tag @s add keylock_locker

#store lockers name
item modify entity @s weapon.mainhand keylock:copy_name
data modify entity @e[tag=keylock_new,limit=1] CustomName set from entity @s SelectedItem.tag.display.Lore[0]
item modify entity @s weapon.mainhand keylock:delete_lore

execute as @e[tag=keylock_new] run function keylock:container/lock

#store block type
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe
data modify entity @e[tag=keylock_new,limit=1] data.id set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"color":"#FEFFFE","text":"Container"}'}}}}] Item.id
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{display:{Name:'{"color":"#FEFFFE","text":"Container"}'}}}}]