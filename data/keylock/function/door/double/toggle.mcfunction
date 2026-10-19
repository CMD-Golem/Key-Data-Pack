# as new marker at door
# open door for automatic door opening
execute if score #toggle_auto keylock matches 1.. run tag @s add keylock_autodoor
execute if score #toggle_auto keylock matches 1.. run data merge entity @s {data:{block:{open:",open=true"}}}

execute if score #toggle_auto keylock matches 1.. if score #execute_code keylock matches 20 as @e[tag=keylock_door,distance=..0.1] run tag @s add keylock_autounlocked

# toggle door for double door
execute unless score #toggle_auto keylock matches 1.. if score #open_status keylock matches 0 run data merge entity @s {data:{block:{open:",open=false"}}}
execute unless score #toggle_auto keylock matches 1.. if score #open_status keylock matches 1 run data merge entity @s {data:{block:{open:",open=true"}}}

# replace door
function keylock:door/lock/store
execute unless block ~ ~ ~ #keylock:air run function keylock:door/replace_broken with entity @s data.block

# kill on close
execute unless score #toggle_auto keylock matches 1.. run kill @s
execute unless score #toggle_auto keylock matches 1.. as @e[tag=keylock_door,distance=..0.1] run tag @s remove keylock_autounlocked 