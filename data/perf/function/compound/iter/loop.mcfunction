#perf:compound/iter/loop

# 在这里写测试命令
data modify storage perf:io key set from storage perf:io compound_keys[0].key
data modify storage perf:io compound_keys append from storage perf:io compound_keys[0]
data remove storage perf:io compound_keys[0]

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:compound/iter/loop