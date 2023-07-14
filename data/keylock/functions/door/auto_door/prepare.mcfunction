execute unless predicate keylock:get_type/upper align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=keylock_autodoor,distance=..0.1] run function keylock:door/auto_door/detect
execute if predicate keylock:get_type/upper align xyz positioned ~0.5 ~-1 ~0.5 unless entity @e[tag=keylock_autodoor,distance=..0.1] run function keylock:door/auto_door/detect
