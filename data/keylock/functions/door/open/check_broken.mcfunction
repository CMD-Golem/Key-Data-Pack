execute if predicate keylock:get_type/upper positioned ~ ~-1 ~ run function keylock:door/open/replace_broken
execute unless predicate keylock:get_type/upper run function keylock:door/open/replace_broken
