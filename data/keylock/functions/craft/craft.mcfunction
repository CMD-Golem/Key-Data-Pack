execute as @a[tag=keylock_craft] at @s unless entity @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"},Age:1s},distance=..3] run clear @s knowledge_book 1
execute at @a[tag=keylock_craft] run kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"},Age:1s},distance=..3]

give @a[tag=keylock_craft] minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"Key","italic":false}'},CustomModelData:4268953,keylock:1b} 1
scoreboard players remove @a[tag=keylock_craft] keylock_craft 1

execute as @a[tag=keylock_craft,scores={keylock_craft=1..}] run function keylock:craft/mass_craft

tag @a[tag=keylock_craft] remove keylock_craft