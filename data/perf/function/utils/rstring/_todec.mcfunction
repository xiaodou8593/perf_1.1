#perf:utils/rstring/_todec
# 字符串转十进制数字，忽略无效字符
# 包含任意位置的字符'-'则判定为负数
# 输出<dec,int>

scoreboard players set dec int 0
scoreboard players set sstemp_sign int 1

data modify storage math:io temp set from storage math:io rstring_chars
execute if data storage math:io temp[0] run function perf:utils/string/todec/loop with storage math:io temp[0]

scoreboard players operation dec int *= sstemp_sign int