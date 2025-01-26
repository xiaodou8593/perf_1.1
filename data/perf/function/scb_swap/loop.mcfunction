#perf:scb_swap/loop

# 在这里写测试命令
scoreboard players operation temp int >< test int
scoreboard players operation temp int >< test int
scoreboard players operation temp int >< test int
scoreboard players operation temp int >< test int
scoreboard players operation temp int >< test int

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:scb_swap/loop