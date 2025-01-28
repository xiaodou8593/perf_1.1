#perf:if_block/pass_a_lot/loop

# 在这里写测试命令
execute at @s if block ~ ~ ~ #perf:pass_a_lot
execute at @s if block ~ ~1 ~ #perf:pass_a_lot

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:if_block/pass_a_lot/loop