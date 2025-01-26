#perf:utils/string/_startswith
# 检查字符串是否以pstring开头
# 输入pstring
# 输出<res,int>
# 会重置pstring转动

execute if score pstring_phi int matches 1.. run function perf:utils/pstring/_rephi

scoreboard players operation sstemp_cnt int = string_n int
scoreboard players operation sstemp_cnt int -= string_phi int
execute if score sstemp_cnt int < pstring_n int run return run scoreboard players set res int 0

scoreboard players set res int 1
data modify storage math:io temp_p set from storage math:io pstring_chars
data modify storage math:io temp_t set from storage math:io string_chars

execute if data storage math:io temp_p[0] run function perf:utils/string/cmp_loop