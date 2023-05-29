execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"},Age:1s},distance=..3]

clear @s knowledge_book 1
give @s minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"Key","italic":false}'},CustomModelData:4268953,keylock:1b} 1
scoreboard players remove @s keylock_craft 1

execute if entity @s[scores={keylock_craft=1..}] run function keylock:craft/mass_craft