#Evaluate 后面的参数可以是任意合法的python表达式，比set variable灵活，后者只能处理values
#${var}    evaluate    testEvaluate       # 可以是字符串
#${var1}   evaluate    ['hello','world','2019']   # 可以是列表
    ${list2}   evaluate   [i for i in range(100)][::2]
    log to console
#${var2}   evauate     ['hello',0]            #可以是复杂的表达式

*** Test Cases ***
列表生成
    ${list1}   create list   a  b  c ${list1}
    log to console   ${list2}

字典操作
    ${dict1}   evaluate  {'a':1,'b':2}
    #给字典增加键值对
    evaluate   $dict1.update({'c':3})
    log to console  ${dict1}

    #不能执行赋值操作
    evaluate   $dict1.update({'a':666})
    log to console  ${dict1}











