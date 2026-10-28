# as used key/player walking away at block
function keylock:container/lock/5_prepare

#double container
execute if predicate keylock:get_type/type_right if predicate keylock:get_type/north positioned ~-1 ~ ~ run function keylock:container/lock/5_prepare
execute if predicate keylock:get_type/type_right if predicate keylock:get_type/east positioned ~ ~ ~-1 run function keylock:container/lock/5_prepare
execute if predicate keylock:get_type/type_right if predicate keylock:get_type/south positioned ~1 ~ ~ run function keylock:container/lock/5_prepare
execute if predicate keylock:get_type/type_right if predicate keylock:get_type/west positioned ~ ~ ~1 run function keylock:container/lock/5_prepare

execute if predicate keylock:get_type/type_left if predicate keylock:get_type/north positioned ~1 ~ ~ run function keylock:container/lock/5_prepare
execute if predicate keylock:get_type/type_left if predicate keylock:get_type/east positioned ~ ~ ~1 run function keylock:container/lock/5_prepare
execute if predicate keylock:get_type/type_left if predicate keylock:get_type/south positioned ~-1 ~ ~ run function keylock:container/lock/5_prepare
execute if predicate keylock:get_type/type_left if predicate keylock:get_type/west positioned ~ ~ ~-1 run function keylock:container/lock/5_prepare

# place display
execute if score #container_type keylock matches 2 as @e[tag=keylock_needsdisplay] run function keylock:container/replace/2_display