#perf:sincos/tp_buffer/loop

# 在这里写测试命令
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players add test int 1
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage perf:io xyz set from entity @s Pos
execute store result score cos int run data get storage perf:io xyz[2] 10000
execute store result score sin int run data get storage perf:io xyz[0] 10000

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:sincos/tp_buffer/loop