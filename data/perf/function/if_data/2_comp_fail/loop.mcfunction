#perf:if_data/2_comp_fail/loop

# 在这里写测试命令
execute if data storage perf:io {data:{fold_1:"match_string"}}

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:if_data/2_comp_fail/loop