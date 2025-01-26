#perf:utils/string/_match
# 把字符串转动到第一个匹配的位置，并计算匹配长度
# 输入matcher列表storage math:io input
# 输出<res,int>表示匹配长度，0是不匹配
# 不改变输入

scoreboard players set res int 0

scoreboard players operation ssloop int = string_n int
scoreboard players operation ssloop int -= string_phi int
execute if score ssloop int matches 1.. run function perf:utils/string/find_loop