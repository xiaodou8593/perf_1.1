#perf:if_score/execute_/loop

# 在这里写测试命令
scoreboard players set x_start int -100000
scoreboard players set y_start int -100000
scoreboard players set z_start int -100000
scoreboard players set x_end int 100000
scoreboard players set y_end int 100000
scoreboard players set z_end int 100000

execute \
	if score @s x_max >= x_start int if score @s x_min <= x_end int \
	if score @s y_max >= y_start int if score @s y_min <= y_end int \
	if score @s z_max >= z_start int if score @s z_min <= z_end int \
	run function perf:if_score/void

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:if_score/execute_/loop