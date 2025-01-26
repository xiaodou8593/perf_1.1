#perf:utils/string/_last_char
# 字符串反向转动

data modify storage math:io string_chars prepend from storage math:io string_chars[-1]
data remove storage math:io string_chars[-1]
scoreboard players remove string_phi int 1
scoreboard players operation string_phi int %= string_n int