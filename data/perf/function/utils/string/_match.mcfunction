#perf:utils/string/_match
# 计算字符串匹配长度
# 输入matcher列表storage math:io input
# 输出<res,int>表示匹配长度，0是不匹配
# 不改变输入

execute if score string_n int matches 0 run return run scoreboard players set res int 0

# 加载第一个匹配器
function perf:utils/string/matcher/first

scoreboard players set res int 1

# 尝试喂饱每一个匹配器
scoreboard players set sstemp_phi int 0
execute store result score sssloop int if data storage math:io input[]
execute if score sssloop int matches 1.. run function perf:utils/string/matcher/loop

scoreboard players operation res int *= sstemp_cnt int

# 反转复原
execute if score sstemp_cnt int matches 1.. run function perf:utils/string/matcher/last_i
execute if score sstemp_phi int matches 1.. run function perf:utils/string/matcher/rephi