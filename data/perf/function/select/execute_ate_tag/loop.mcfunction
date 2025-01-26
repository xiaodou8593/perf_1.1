#perf:select/execute_ate_tag/loop

# 在这里写测试命令
execute as @e[tag=result] run tag @s remove result
tag @s add result

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:select/execute_ate_tag/loop