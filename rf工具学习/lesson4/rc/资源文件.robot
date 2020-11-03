
#用户关键字定义方式类似于用例，只是用户关键字定义在keyworks表中

#*** Test Cases ***
用例1
#    kw1
#    kw2  2020   2020

#    ${abc}  kw3-返回值     2020    2021
#    log to console  ${abc}

#    ${abc}  kw4-默认参数     2020
#    log to console  ${abc}

#    kw5-不定长参数  a    b   c   d

#   ${dict}   create dictionary    a=1   b=2   c=3
#    kw6-键值对    &{dict}
*** Keywords ***
kw1
    ${var}   convert to integer   2020
    log to console  ${var}
    should be true   $var==2020

kw2
    [Arguments]   ${actual}    ${expect}
    ${var}   set variable   ${actual}
    log to console  ${var}
    should be true   $var==$expect


kw3-返回值
    [Arguments]   ${var1}    ${var2}
    ${var}   set variable   ${var1}+${var2}
    log to console  ${var}
    [Return]  ${var}

kw4-默认参数
    [Arguments]   ${var1}    ${var2}=1998
    ${var}   set variable   ${var1}+${var2}
    log to console  ${var}
    [Return]  ${var}

kw5-不定长参数
    [Arguments]    @{args}
    FOR  ${a}  IN  @{args}
    log to console   ${a}
    END

#键值对参数**kws
kw6-键值对
    [Arguments]    &{args}
    FOR  ${key}  IN  @{args}
    log to console   ${args}[${key}]
    END








