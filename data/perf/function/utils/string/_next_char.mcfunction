#perf:utils/string/_next_char
# 字符串正向转动

data modify storage math:io string_chars append from storage math:io string_chars[0]
data remove storage math:io string_chars[0]
scoreboard players add string_phi int 1
scoreboard players operation string_phi int %= string_n int