# as player who opened a door at door
# close opened doors when they are locked
execute if predicate keylock:get_type/upper positioned ~ ~-1 ~ if entity @e[tag=keylock_door,tag=!keylock_closed,distance=..0.1] run function keylock:door/open/close
execute unless predicate keylock:get_type/upper if entity @e[tag=keylock_door,tag=!keylock_closed,distance=..0.1] run function keylock:door/open/close

#open entire double door
execute if score #double_doors keylock matches 1 unless score #door_found keylock matches 1 unless score #open_doors keylock matches 1 if predicate keylock:get_type/upper positioned ~ ~-1 ~ unless entity @e[tag=keylock_door,distance=..0.1] run function keylock:door/double/detect
execute if score #double_doors keylock matches 1 unless score #door_found keylock matches 1 unless score #open_doors keylock matches 1 unless predicate keylock:get_type/upper unless entity @e[tag=keylock_door,distance=..0.1] run function keylock:door/double/detect