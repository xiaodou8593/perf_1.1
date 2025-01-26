#perf:score_filter/selector/loop

# 在这里写测试命令
execute as @e[scores={int=1..}] run scoreboard players add test int 0

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:score_filter/selector/loop