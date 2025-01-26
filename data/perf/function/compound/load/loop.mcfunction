#perf:compound/load/loop

# 向集合添加key
$data modify storage perf:io compound.'$(key)' set from storage perf:io key
data modify storage perf:io compound_keys append value {}
data modify storage perf:io compound_keys[-1].key set from storage perf:io key

# 列表转动
data modify storage perf:io data append from storage perf:io data[0]
data remove storage perf:io data[0]
data modify storage perf:io key set from storage perf:io data[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function perf:compound/load/loop with storage perf:io {}