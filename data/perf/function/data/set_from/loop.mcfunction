#perf:data/set_from/loop

# 在这里写测试命令
data modify storage perf:io test set value "void"
data modify storage perf:io test set from storage perf:io data

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:data/set_from/loop