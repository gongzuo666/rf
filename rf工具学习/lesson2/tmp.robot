*** Settings ***
#Library  SeleniumLibrary

*** Test Cases ***
测试1
    # 变量赋值
    ${url1}  set variable    http://baidu.com    http://google.com
    log to console  ${url1}
    # log to console  ${url2}
    # 取列表元素
    log to console  ${url1}[0]
    # 打印到日志报告中
    log  ${url1}[1]
    # 休眠
    sleep  3
    log to console  ${url1}[1]

断言
    # 判断是否相等
    ${var1}  set variable    2020
    ${var2}  set variable    2020
    should be equal  ${var1}   ${var2}
    log to console  测试通过

断言2
    # 判断是否大于
    ${var1}  set variable    2021
    ${var2}  set variable    2020
    #判断1是否大于2
    should be true  ${var1}>${var2}

    # 判断是否包含
    ${res}   set variable   hello
    #判断字符串包含he
    should be true   'he' in $res
    #如果RF关键字的参数是python条件表达式，引用的变量是字符串类型，需要加上引号，或者去掉大括号
    log to console  ${res}






