#perf:compound/cnt_method_3/loop

# 在这里写测试命令
execute store result score res int run data get storage perf:io compound_keys

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:compound/cnt_method_3/loop