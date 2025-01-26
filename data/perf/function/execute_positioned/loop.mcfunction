#perf:execute_positioned/loop

# 在这里写测试命令
execute positioned 0.0 0.0 0.0 run scoreboard players add test int 1

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:execute_positioned/loop