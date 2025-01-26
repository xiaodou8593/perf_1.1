#perf:execute/dim_at_10/loop

# 在这里写测试命令
execute as @e at @s run scoreboard players add test int 1

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:execute/dim_at_10/loop