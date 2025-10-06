#perf:if_score/_expr

data modify storage perf:io afk prepend value "if_score/predicate"
data modify storage perf:io afk prepend value "if_score/execute"
data modify storage perf:io afk prepend value "if_score/base"
data modify storage perf:io afk prepend value "powerload"