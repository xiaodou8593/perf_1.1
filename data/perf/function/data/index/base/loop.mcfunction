#perf:data/index/base/loop

# 在这里写测试命令
execute store result score inp int run random value 0..2000 perf
scoreboard players operation inp int %= data_n int
function math:list/_index

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:data/index/base/loop