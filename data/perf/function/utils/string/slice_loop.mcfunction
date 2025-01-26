#perf:utils/string/slice_loop
# perf:utils/string/_slice调用

data modify storage math:io rstring_chars append from storage math:io string_chars[0]

data remove storage math:io string_chars[0]
scoreboard players remove inp int 1
execute if score inp int matches 1.. run function perf:utils/string/slice_loop