
*** Settings ***
Resource  rc/资源文件.robot

*** Test Cases ***
case1
    [Template]    kw2
    #写关键字用到的参数---不可以再写关键字
    1999   1999
    1988   1988
    2000   2001
    2020   2021
    abc    abc
    log to console   用例执行完毕

#RF的数据只能写在用例文件中