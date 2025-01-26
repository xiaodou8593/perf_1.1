#perf:uvw/tovec/loop

# 在这里写测试命令
execute store result storage math:io rotation[0] float 0.01 run random value -18000..18000 perf
execute store result storage math:io rotation[1] float 0.01 run random value -9000..9000 perf
data modify entity @s Rotation set from storage math:io rotation
execute store result storage math:io xyz[0] double 0.01 run random value -1000..1000 perf
execute store result storage math:io xyz[1] double 0.01 run random value -1000..1000 perf
execute store result storage math:io xyz[2] double 0.01 run random value -1000..1000 perf
data modify entity @s Pos set from storage math:io xyz
execute at @s run function math:anchor/_touvw

scoreboard players set u int 1000
scoreboard players set v int 1000
scoreboard players set w int 1000
function math:uvw/_tovec

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:uvw/tovec/loop