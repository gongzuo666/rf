*** Test Cases ***
传参1
#    ${var}  set variable   hello
#    log to console  ${var}
#    should be true  'he' in $var

# 转换成int,作比较
#    ${var}  set variable   2021
#    log to console  ${var}
#    #转化int
#    ${var}   convert to integer   ${var}
#
#    should be true   $var>2020

# 转换成int,作比较
#    ${var}  set variable   ${2021}
#    log to console  ${var}
#
#    should be true   $var>2020


    ${var}  set variable   ${2021}
    log to console  ${var}
    #转化int
    ${var1}   convert to integer   2020
    #转化浮点型
    ${var2}   convert to number    2020.0

    should be true   $var1==$var2






