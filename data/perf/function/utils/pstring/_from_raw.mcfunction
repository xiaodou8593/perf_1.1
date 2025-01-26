#perf:utils/pstring/_from_raw
# 原生字符串转换为临时对象
# 输入storage math:io input

data modify storage math:io pstring_chars set value []
execute store result score pstring_n int run data get storage math:io input
scoreboard players set pstring_phi int 0

# 进入循环
scoreboard players operation ssloop int = pstring_n int
execute if score ssloop int matches 1.. run function perf:utils/pstring/raw_loop