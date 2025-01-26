#perf:utils/string/_last_i
# 字符串反向转动n个字符
# 输入<inp,int>

execute if score inp int matches 1.. run function perf:utils/string/last_loop
scoreboard players operation string_phi int %= string_n int