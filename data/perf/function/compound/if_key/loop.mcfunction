#perf:compound/if_key/loop

# 在这里写测试命令
data modify storage perf:io key set from storage perf:io compound_keys[0].key
execute store result score res int run function perf:compound/if_key/run with storage perf:io {}
data modify storage perf:io compound_keys append from storage perf:io compound_keys[0]
data remove storage perf:io compound_keys[0]

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:compound/if_key/loop