#perf:utils/pstring/rephi_loop_neg
# perf:utils/pstring/_rephi调用

data modify storage math:io pstring_chars append from storage math:io pstring_chars[0]
data remove storage math:io pstring_chars[0]

scoreboard players add pstring_phi int 1
execute if score pstring_phi int matches ..-1 run function perf:utils/pstring/rephi_loop_neg