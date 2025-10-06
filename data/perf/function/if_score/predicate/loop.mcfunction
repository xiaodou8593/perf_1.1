#perf:if_score/predicate/loop

# 在这里写测试命令
execute store result score x_start int run random value -1000000000..1000000000
execute store result score y_start int run random value -1000000000..1000000000
execute store result score z_start int run random value -1000000000..1000000000
execute store result score x_end int run random value -1000000000..1000000000
execute store result score y_end int run random value -1000000000..1000000000
execute store result score z_end int run random value -1000000000..1000000000

execute if predicate perf:box_check run function perf:if_score/void

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:if_score/predicate/loop