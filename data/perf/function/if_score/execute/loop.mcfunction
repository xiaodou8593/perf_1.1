#perf:if_score/execute/loop

# 在这里写测试命令
execute store result score x_start int run random value -1000000000..1000000000
execute store result score y_start int run random value -1000000000..1000000000
execute store result score z_start int run random value -1000000000..1000000000
execute store result score x_end int run random value -1000000000..1000000000
execute store result score y_end int run random value -1000000000..1000000000
execute store result score z_end int run random value -1000000000..1000000000

execute \
	if score @s x_max >= x_start int if score @s x_min <= x_end int \
	if score @s y_max >= y_start int if score @s y_min <= y_end int \
	if score @s z_max >= z_start int if score @s z_min <= z_end int \
	run function perf:if_score/void

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:if_score/execute/loop