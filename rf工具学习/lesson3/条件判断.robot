#编程语言的要素--RF
1.变量--${scalar}  @{list}   &{dict}
2.函数--关键字
3.循环--FOR循环，没有while
4.条件判断--

*** Test Cases ***
条件判断1
    ${time}    get time
    log to console  ${time}
    #判断当前实践是否为8月份
    run keyword if    '08' in $time    log to console   当前时间为8月
    #条件成立，只能执行一个关键字

条件判断2-ELSE
    ${time}    get time
    log to console  ${time}
    #判断当前实践是否为8月份
    run keyword if    '0822222' in $time    log to console   当前时间为8月
    #换行前加三个点，后面空两格以上
    ...     ELSE  log to console   不知道什么时候

条件判断3-ELSE-IF
    ${time}    get time
    log to console  ${time}
    run keyword if    '08' in $time and '05' in $time   log to console   今天是8月5日
    ...   ELSE IF    '20201' in $time    log to console   王者荣耀时间
    ...   ELSE IF    '20:22' in $time    log to console   该学习RF了
    ...   ELSE   log to console   该去约会了

#当条件成立的时候，给变量赋值

条件判断4-赋值操作
    ${time}    get time
    ${res}    set variable if   '08' in $time and '05' in $time    买月饼
    log to console  ${res}








