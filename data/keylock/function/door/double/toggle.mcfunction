# open door for automatic door opening
execute if score #toggle_auto keylock matches 1.. run tag @s add keylock_autodoor
execute if score #toggle_auto keylock matches 1.. run data merge entity @s {data:{block:{open:",open=true"}}}

# toggle door for double door
execute unless score #toggle_auto keylock matches 1.. if score #open_status keylock matches 0 run data merge entity @s {data:{block:{open:",open=false"}}}
execute unless score #toggle_auto keylock matches 1.. if score #open_status keylock matches 1 run data merge entity @s {data:{block:{open:",open=true"}}}

# replace door
function keylock:door/lock/store
execute unless block ~ ~ ~ #keylock:air run function keylock:door/replace_broken with entity @s data.block

execute unless score #toggle_auto keylock matches 1.. run kill @s
