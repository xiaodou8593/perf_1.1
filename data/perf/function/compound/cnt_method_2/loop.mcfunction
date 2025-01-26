#perf:compound/cnt_method_2/loop

# 在这里写测试命令
execute store result score res int if data storage perf:io compound_keys[]

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:compound/cnt_method_2/loop