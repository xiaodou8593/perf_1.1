#perf:utils/string/_endswith
# 检查字符串是否以pstring结尾
# 输入pstring
# 输出<res,int>
# 会重置string,pstring转动

execute if score string_phi int matches 1.. run function perf:utils/string/_rephi
execute if score pstring_phi int matches 1.. run function perf:utils/pstring/_rephi

execute if score string_n int < pstring_n int run return run scoreboard players set res int 0

scoreboard players set res int 1
data modify storage math:io temp_p set from storage math:io pstring_chars
data modify storage math:io temp_t set from storage math:io string_chars

execute if data storage math:io temp_p[0] run function perf:utils/string/cmp_loop_neg