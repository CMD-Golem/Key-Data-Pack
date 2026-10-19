# as keylock_autodoor at @s
scoreboard players set #open_status keylock 0

#toggle door
execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/north positioned ~-1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/north as @e[tag=keylock_autodoor,distance=..0.1] run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/east positioned ~ ~ ~-1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/east as @e[tag=keylock_autodoor,distance=..0.1] run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/south positioned ~1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/south as @e[tag=keylock_autodoor,distance=..0.1] run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/west positioned ~ ~ ~1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/west as @e[tag=keylock_autodoor,distance=..0.1] run function keylock:door/double/toggle

execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/north positioned ~1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/north as @e[tag=keylock_autodoor,distance=..0.1] run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/east positioned ~ ~ ~1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/east as @e[tag=keylock_autodoor,distance=..0.1] run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/south positioned ~-1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/south as @e[tag=keylock_autodoor,distance=..0.1] run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/west positioned ~ ~ ~-1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/west as @e[tag=keylock_autodoor,distance=..0.1] run function keylock:door/double/toggle

function keylock:door/double/toggle
