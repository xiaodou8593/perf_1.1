#perf:utils/string/_fetch
# 获取字符串前n个字符
# 输入<inp,int>
# 输出rstring
# 输出<res,int>为0表示截取失败

# 如果没有足够的字符
scoreboard players set res int 1
scoreboard players operation sstemp_cnt int = string_n int
scoreboard players operation sstemp_cnt int -= string_phi int
execute if score sstemp_cnt int < inp int run return run scoreboard players set res int 0

# 输出rstring置空
data modify storage math:io rstring_chars set value []
scoreboard players set rstring_phi int 0
scoreboard players operation rstring_n int = inp int

execute if score inp int matches 1.. run function perf:utils/string/fetch_loop

scoreboard players operation string_phi int %= string_n int