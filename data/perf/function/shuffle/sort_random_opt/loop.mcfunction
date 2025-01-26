#perf:shuffle/sort_random_opt/loop

# 在这里写测试命令
function math:list/_shuffle

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:shuffle/sort_random_opt/loop