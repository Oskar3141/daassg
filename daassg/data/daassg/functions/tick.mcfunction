execute unless score @p spawncomplete matches 1 run function daassg:on_load 

# tridents
execute as @e[type=drowned,tag=!trident] at @s if entity @s[predicate=daassg:trident] run data merge entity @s {HandItems:[{id:"minecraft:trident",Count:1b}], HandDropChances: [0.085f, 0.085f]}
tag @e[type=drowned,tag=!trident] add trident

# shells
execute as @e[type=drowned,tag=!shell] at @s if entity @s[predicate=daassg:nautilus_shell] run data merge entity @s {HandItems:[{},{id:"minecraft:nautilus_shell",Count:1b}], HandDropChances: [0.085f, 2.0f]}
tag @e[type=drowned,tag=!shell] add shell

# time
execute store result score @p day run time query day
execute as @e[scores={day=3}] run time add 1000d

# thunder 20 minutes - 75 minutes

# execute as @e[scores={has_thundered=..-1}] run scoreboard players set @p has_thundered 0
execute store result score @p gametime run time query gametime
execute as @e[scores={has_thundered=0}] run execute if score @p gametime >= @p thunder run function daassg:thunder 