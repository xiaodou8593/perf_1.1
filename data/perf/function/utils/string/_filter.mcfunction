#perf:utils/string/_filter
# 过滤指定的字符
# 输入字符过滤器storage math:io input
# 会重置字符串转动

execute if score string_phi int matches 1.. run function perf:utils/string/_rephi

data modify storage math:io char set from storage math:io input[0]
execute if data storage math:io input[0] run function perf:utils/string/filter_loop with storage math:io {}

execute store result score string_n int if data storage math:io string_chars[]