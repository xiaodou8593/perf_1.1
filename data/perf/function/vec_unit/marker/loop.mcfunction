#perf:vec_unit/marker/loop

# 在这里写测试命令
execute store result score vec_x int run data get storage perf:io sphere_vecs[0][0] 10000
execute store result score vec_y int run data get storage perf:io sphere_vecs[0][1] 10000
execute store result score vec_z int run data get storage perf:io sphere_vecs[0][2] 10000
function math:vec/_unit
data modify storage perf:io sphere_vecs append from storage perf:io sphere_vecs[0]
data remove storage perf:io sphere_vecs[0]

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:vec_unit/marker/loop