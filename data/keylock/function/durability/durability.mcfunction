#custom tool damage by CMD-Golem [cmd-golem.com]
execute if predicate keylock:durability run return 0
execute store result score @s keylock_craft run data get entity @s SelectedItem.components.minecraft:damage

#add one damage point if durability allows
execute if items entity @s weapon.mainhand *[!minecraft:enchantments~[{enchantment:"minecraft:unbreaking",levels:{min:1}}]] run scoreboard players add @s keylock_craft 1
execute if predicate {"type":"minecraft:random_chance", "chance":0.50} if items entity @s weapon.mainhand *[minecraft:enchantments={"minecraft:unbreaking":1}] run scoreboard players add @s keylock_craft 1
execute if predicate {"type":"minecraft:random_chance", "chance":0.33} if items entity @s weapon.mainhand *[minecraft:enchantments={"minecraft:unbreaking":2}] run scoreboard players add @s keylock_craft 1
execute if predicate {"type":"minecraft:random_chance", "chance":0.25} if items entity @s weapon.mainhand *[minecraft:enchantments={"minecraft:unbreaking":3}] run scoreboard players add @s keylock_craft 1
execute if predicate {"type":"minecraft:random_chance", "chance":0.20} if items entity @s weapon.mainhand *[minecraft:enchantments={"minecraft:unbreaking":4}] run scoreboard players add @s keylock_craft 1
execute if predicate {"type":"minecraft:random_chance", "chance":0.17} if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantment:"minecraft:unbreaking",levels:{min:5}}]] run scoreboard players add @s keylock_craft 1

#store score in storage and copy it on item
execute store result storage keylock:durability durability int 1 run scoreboard players get @s keylock_craft
function keylock:durability/set_damage with storage keylock:durability

#remove item from inventory if its broken
execute if items entity @s weapon.mainhand *[minecraft:damage~{durability:0}] run playsound minecraft:entity.item.break player @s
execute if items entity @s weapon.mainhand *[minecraft:damage~{durability:0}] run item replace entity @s weapon.mainhand with air