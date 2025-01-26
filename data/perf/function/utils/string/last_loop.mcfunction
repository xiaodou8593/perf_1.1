#perf:utils/string/last_loop
# perf:utils/string/_last_i调用

data modify storage math:io string_chars prepend from storage math:io string_chars[-1]
data remove storage math:io string_chars[-1]
scoreboard players remove string_phi int 1

scoreboard players remove inp int 1
execute if score inp int matches 1.. run function perf:utils/string/last_loop