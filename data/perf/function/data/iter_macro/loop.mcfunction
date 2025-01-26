#perf:data/iter_macro/loop

# 在这里写测试命令
scoreboard players operation index int = perf_loop int
execute store result storage perf:io temp int 1 run scoreboard players operation index int %= data_n int
data modify storage perf:io result set value ""
function perf:data/iter_macro/run with storage perf:io {}

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:data/iter_macro/loop