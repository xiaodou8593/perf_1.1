#perf:score_filter/_start

data modify storage perf:io afk prepend value "score_filter/selector_fail"
data modify storage perf:io afk prepend value "score_filter/selector"
data modify storage perf:io afk prepend value "score_filter/execute_fail"
data modify storage perf:io afk prepend value "score_filter/execute"