execute if score #key_name keylock matches 1 run data modify entity @e[tag=keylock_container,distance=..0.1,limit=1] data.password set from entity @s data.password
data modify entity @e[tag=keylock_container,distance=..0.1,limit=1] CustomName set from entity @s CustomName
