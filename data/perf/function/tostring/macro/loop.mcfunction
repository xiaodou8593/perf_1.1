#perf:tostring/macro/loop

# 在这里写测试命令
execute store result storage perf:io temp int 1 run scoreboard players get perf_loop int
function perf:tostring/macro/run with storage perf:io {}

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:tostring/macro/loop