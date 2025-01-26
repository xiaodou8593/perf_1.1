#perf:tp/base/loop

# 在这里写测试命令
tp @s 0 0 0
tp @s 0 0 1

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:tp/base/loop