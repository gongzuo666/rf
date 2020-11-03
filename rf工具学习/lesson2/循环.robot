*** Test Cases ***
#RF不支持嵌套循环，如果有此需求，建议放到Python里去实现，然后RF调用
loop1
    #新语法
    ${list}  create list  a   b   c  d  e
    #循环头
    FOR  ${one}  IN  @{list}
    #循环体
    log to console  ${one}
    #结束循环
    END
    LOG TO CONSOLE  循环结束

loop-2
#in range用法，(IN RANGE)之间只能有一个空格
    FOR  ${one}  IN RANGE   100
    log to console  ${one}
    END
#    LOG TO CONSOLE  循环结束


loop-3
#start-end模式
    FOR  ${one}  IN RANGE   50   100
    log to console  ${one}
    END


loop-4
#步长模式
    FOR  ${one}  IN RANGE   50   100   2
    log to console  ${one}
    END














