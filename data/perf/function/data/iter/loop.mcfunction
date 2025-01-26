#perf:data/iter/loop

# 在这里写测试命令
data modify storage perf:io data append from storage perf:io data[0]
data remove storage perf:io data[0]
data modify storage perf:io result set value ""
data modify storage perf:io result set from storage perf:io data[0]

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:data/iter/loop