data merge entity @s {data:{facing:north}}
execute if predicate keylock:get_type/east run data merge entity @s {data:{facing:east}}
execute if predicate keylock:get_type/south run data merge entity @s {data:{facing:south}}
execute if predicate keylock:get_type/west run data merge entity @s {data:{facing:west}}

data merge entity @s {data:{hinge:right}}
execute if predicate keylock:get_type/door_left run data merge entity @s {data:{hinge:left}}

data merge entity @s {data:{open:"false"}}
execute if predicate keylock:get_type/open run data merge entity @s {data:{open:"true"}}