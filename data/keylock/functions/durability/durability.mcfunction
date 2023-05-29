#custom tool damage by CMD-Golem [cmd-golem.com]
execute store result score @s keylock_craft run data get entity @s SelectedItem.tag.Damage

#add one damage point if durability allows
execute if predicate keylock:durability/non run scoreboard players add @s keylock_craft 1
execute if predicate keylock:durability/lvl1 run scoreboard players add @s keylock_craft 1
execute if predicate keylock:durability/lvl2 run scoreboard players add @s keylock_craft 1
execute if predicate keylock:durability/lvl3 run scoreboard players add @s keylock_craft 1
execute if predicate keylock:durability/lvl4 run scoreboard players add @s keylock_craft 1
execute if predicate keylock:durability/lvl5 run scoreboard players add @s keylock_craft 1

#store score in storage and copy it on item
execute store result storage keylock:durability durability int 1 run scoreboard players get @s keylock_craft
execute unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand keylock:durability

#remove item from inventory if its broken
execute if predicate keylock:durability/broken run playsound minecraft:entity.item.break player @s
execute if predicate keylock:durability/broken run item replace entity @s weapon.mainhand with air