#perf:utils/string/next_loop
# perf:utils/string/_next_i调用

data modify storage math:io string_chars append from storage math:io string_chars[0]
data remove storage math:io string_chars[0]
scoreboard players add string_phi int 1

scoreboard players remove inp int 1
execute if score inp int matches 1.. run function perf:utils/string/next_loop