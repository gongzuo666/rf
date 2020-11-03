#使用自定义关键字
#1.导入关键字模块文件
*** Settings ***
#模块导入法
Library  testliib
Library  login
*** Test Cases ***
case1
     ${course}      get_course_list
     log to console  ${course}

case2
    check score  50

case3
    connect db  127.0.0.1   table=teacher

case4
    ${stu}   create list  小明   小红   小亮
    #解包列表
    list student   @{stu}

case5
    ${teacher}   create dictionary  a=语文   b=英语   c=数学
    #解包字典
    list_teacher   &{teacher}






