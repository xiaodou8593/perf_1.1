#perf:if_block/pass/loop

# 在这里写测试命令
execute at @s if block ~ ~ ~ #perf:pass
execute at @s if block ~ ~1 ~ #perf:pass

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:if_block/pass/loop