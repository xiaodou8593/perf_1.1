#perf:preprocess
# perf:countdown调用

data modify storage perf:io namespace set value ""
data modify storage math:io input set from storage perf:io testing
function perf:utils/string/_from_raw
execute unless data storage math:io string_chars[{char:":"}] run function perf:namespace