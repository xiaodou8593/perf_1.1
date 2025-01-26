#perf:tag/remove_method1/loop

# 在这里写测试命令
tag @e[limit=25,sort=random] add stmp
tag @e remove stmp

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:tag/remove_method1/loop