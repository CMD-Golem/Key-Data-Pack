# as used key at block
scoreboard players operation @e[tag=keylock_container,distance=..0.1] keylock = @s keylock

#password
execute if score #key_name keylock matches 1 run data modify entity @e[tag=keylock_container,distance=..0.1,limit=1] data.password set from entity @s SelectedItem.components.minecraft:custom_name

#store lockers name
item modify entity @s weapon.mainhand keylock:copy_name
data modify entity @e[tag=keylock_container,distance=..0.1,limit=1] CustomName set from entity @s SelectedItem.components.minecraft:lore[0]
item modify entity @s weapon.mainhand keylock:delete_lore
