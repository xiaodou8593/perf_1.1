#perf:sphere_vecs/_start

scoreboard players set x int 0
scoreboard players set y int 0
scoreboard players set z int 0
scoreboard players set r int 5000
scoreboard players set render_density int 1

data modify storage perf:io sphere_vecs set value []
data modify storage math:io render_command set value "\
	data modify storage perf:io sphere_vecs append from entity @s Pos\
"
execute as 0-0-0-0-0 run function math:sphere/_render