*** Settings ***
#Library  tlib0809
#声明使用类方法作为关键字-需要导入类-模块导入法(不支持通配符)
#Library  tlib0809.Sublib

#如果类初始化函数有参数-导入时候需要传参
Library  tlib0809.Sublib2   localhost   8080

#如果class名称和模块名称相同，导入时候可以省略类名
Library  tlib0809   localhost   8080


*** Test Cases ***
#case1
#    ${list}   get list
#    log to console  ${list}

#case2     对应Sublib
#    connect db  localhost   3306    test
#    search data

case2-类初始化带参
    connect db
    search data

#如果导入的模块中有相同的方法或者函数名，会让RF冲突，建议不要重复方法名称
case3-相同模块名
    Connect Db2
    search data2

