#perf:utils/string/raw_loop
# perf:utils/string/_from_raw调用

# 逐个添加字符
data modify storage math:io string_chars append value {}
data modify storage math:io string_chars[-1].char set string storage math:io input 0 1
data modify storage math:io input set string storage math:io input 1

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function perf:utils/string/raw_loop