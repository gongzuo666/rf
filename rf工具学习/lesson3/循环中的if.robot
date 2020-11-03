*** Settings ***
Library  testlib
Library  Dialogs
*** Test Cases ***
case1
    FOR  ${one}  IN RANGE  40
    #学员输入分数
    ${score}    Get Value From User     请输入分数
    #判断输入是否为EXIT---如果是就退出循环-break
    run keyword if    $score=='EXIT'    exit for loop
    check_score    ${score}
    END

case2
    FOR  ${one}  IN RANGE  40
    #学员输入分数
    ${score}    Get Value From User    请输入分数
    #判断输入是否为CONT---如果是就重新开始循环-continue
    run keyword if    $score=='CONT'    continue for loop
    #判断输入是否为EXIT---如果是就退出循环-break
    run keyword if    $score=='EXIT'    exit for loop
    check_score    ${score}
    END

case3
    FOR  ${one}  IN RANGE  40
    #学员输入分数
    ${score}    Get Value From User    请输入分数
    log to console  开始统计分数
    #判断输入是否为CONT---如果是就重新开始循环-continue
    continue for loop if    $score=='CONT'
    #判断输入是否为EXIT---如果是就退出循环-break
    exit for loop if    $score=='EXIT'
    check_score    ${score}
    END

