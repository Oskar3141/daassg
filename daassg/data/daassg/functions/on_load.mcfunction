scoreboard players set @p spawncomplete 1

scoreboard objectives add day dummy
scoreboard objectives add has_thundered dummy
scoreboard objectives add gametime dummy
scoreboard objectives add thunder dummy
scoreboard players set @p has_thundered 0
function daassg:rng
scoreboard players operation @p thunder = out rng

# execute as @e[type=cat,sort=nearest,limit=1] run data merge entity @s {CatType:10}
