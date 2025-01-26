#perf:utils/string/_from_raw
# 原生字符串转换为临时对象
# 输入storage math:io input

data modify storage math:io string_chars set value []
execute store result score string_n int run data get storage math:io input
scoreboard players set string_phi int 0

# 进入循环
scoreboard players operation ssloop int = string_n int
execute if score ssloop int matches 1.. run function perf:utils/string/raw_loop