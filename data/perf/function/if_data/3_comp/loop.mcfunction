#perf:if_data/3_comp/loop

# 在这里写测试命令
execute if data storage perf:io {data:{fold_1:{fold_2:"match_string"}}}

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:if_data/3_comp/loop