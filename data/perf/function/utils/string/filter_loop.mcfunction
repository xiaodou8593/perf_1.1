#perf:utils/string/filter_loop
# perf:utils/string/_filter调用

$data remove storage math:io string_chars[{char:"$(char)"}]

data remove storage math:io input[0]
data modify storage math:io char set from storage math:io input[0]
execute if data storage math:io input[0] run function perf:utils/string/filter_loop with storage math:io {}