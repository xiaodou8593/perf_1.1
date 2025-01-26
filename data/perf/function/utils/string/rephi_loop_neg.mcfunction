#perf:utils/string/rephi_loop_neg
# perf:utils/string/_rephi调用

data modify storage math:io string_chars append from storage math:io string_chars[0]
data remove storage math:io string_chars[0]

scoreboard players add string_phi int 1
execute if score string_phi int matches ..-1 run function perf:utils/string/rephi_loop_neg