#perf:utils/string/to_raw/loop
# perf:utils/string/_to_raw调用
# perf:utils/rstring/_to_raw调用

# 迭代temp中要合并的字符串
data modify storage math:io stemp set from storage math:io temp
data modify storage math:io temp set value []

# 计算合并后字符串数量
scoreboard players operation sstemp_cnt int = ssloop int
scoreboard players operation sstemp_mod int = ssloop int
scoreboard players operation sstemp_cnt int /= 2 int
scoreboard players operation sstemp_mod int %= 2 int

# 两两合并
execute if score sstemp_cnt int matches 1.. run function perf:utils/string/to_raw/sloop

# 奇数多合并一次
execute if score sstemp_mod int matches 1 run function perf:utils/string/to_raw/single

scoreboard players operation ssloop int /= 2 int
execute if score ssloop int matches 2.. run function perf:utils/string/to_raw/loop