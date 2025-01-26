#perf:utils/string/to_raw/sloop
# perf:utils/string/to_raw/loop调用

# 合并操作
data modify storage math:io stemp[0].char_next set from storage math:io stemp[1].char
function perf:utils/string/to_raw/merge with storage math:io stemp[0]
data remove storage math:io stemp[0]
data remove storage math:io stemp[0]

scoreboard players remove sstemp_cnt int 1
execute if score sstemp_cnt int matches 1.. run function perf:utils/string/to_raw/sloop