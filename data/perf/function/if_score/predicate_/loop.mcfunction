#perf:if_score/predicate_/loop

# 在这里写测试命令
scoreboard players set x_start int -100000
scoreboard players set y_start int -100000
scoreboard players set z_start int -100000
scoreboard players set x_end int 100000
scoreboard players set y_end int 100000
scoreboard players set z_end int 100000

execute if predicate perf:box_check run function perf:if_score/void

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:if_score/predicate_/loop