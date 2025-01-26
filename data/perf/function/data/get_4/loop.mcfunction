#perf:data/get_4/loop

# 在这里写测试命令
data modify storage perf:io temp set from entity @s data.obj_1
data modify storage perf:io temp set from entity @s data.obj_2

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:data/get_4/loop