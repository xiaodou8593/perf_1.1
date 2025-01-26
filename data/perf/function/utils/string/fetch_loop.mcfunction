#perf:utils/string/fetch_loop
# perf:utils/string/_fetch调用

data modify storage math:io rstring_chars append from storage math:io string_chars[0]

# 列表转动迭代
data modify storage math:io string_chars append from storage math:io string_chars[0]
data remove storage math:io string_chars[0]
scoreboard players add string_phi int 1

scoreboard players remove inp int 1
execute if score inp int matches 1.. run function perf:utils/string/fetch_loop