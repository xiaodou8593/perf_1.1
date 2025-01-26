#perf:sincos/display_buffer/loop

# 在这里写测试命令
execute store result storage perf:io angle_axis.angle float 0.0001 run scoreboard players add test int 1
data modify entity @s transformation.right_rotation set from storage perf:io angle_axis
data modify storage perf:io right_rotation set from entity @s transformation.right_rotation
execute store result score cos int run data get storage perf:io right_rotation[3] 10000
execute store result score sin int run data get storage perf:io right_rotation[0] 10000

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:sincos/display_buffer/loop