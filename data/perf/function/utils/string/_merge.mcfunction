#perf:utils/string/_merge
# 合并字符串
# 输入pstring
# 会重置字符串转动

execute if score string_phi int matches 1.. run function perf:utils/string/_rephi
execute if score pstring_phi int matches 1.. run function perf:utils/pstring/_rephi

data modify storage math:io string_chars append from storage math:io pstring_chars[]
scoreboard players operation string_n int += pstring_n int