#perf:select/ate/loop

# 在这里写测试命令
tag @e remove result
tag @s add result

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:select/ate/loop