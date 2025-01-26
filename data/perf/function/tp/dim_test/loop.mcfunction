#perf:tp/dim_test/loop

# 在这里写测试命令
execute in minecraft:the_nether run tp @s 0 0 0
execute in minecraft:overworld run tp @s 0 0 1

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:tp/dim_test/loop