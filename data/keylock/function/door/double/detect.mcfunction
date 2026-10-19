# as @a at door
# store current door position for autoopening unlocked double door
execute if predicate keylock:get_type/open run scoreboard players set #open_status keylock 1
execute if predicate keylock:get_type/closed run scoreboard players set #open_status keylock 0

#toggle double door
execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/north positioned ~-1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/north summon marker run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/east positioned ~ ~ ~-1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/east summon marker run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/south positioned ~1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/south summon marker run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_right if predicate keylock:get_type/west positioned ~ ~ ~1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_left if predicate keylock:get_type/west summon marker run function keylock:door/double/toggle

execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/north positioned ~1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/north summon marker run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/east positioned ~ ~ ~1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/east summon marker run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/south positioned ~-1 ~ ~ if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/south summon marker run function keylock:door/double/toggle
execute if predicate keylock:get_type/hinge_left if predicate keylock:get_type/west positioned ~ ~ ~-1 if block ~ ~ ~ #keylock:doors if predicate keylock:get_type/hinge_right if predicate keylock:get_type/west summon marker run function keylock:door/double/toggle