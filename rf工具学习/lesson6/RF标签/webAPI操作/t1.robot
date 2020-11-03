

*** Settings ***
#表示强制给该套件下面所有用例都打上标签
Force Tags  回归测试
#作用在当前套件下，自身没有定义标签的用例
Default Tags   default

*** Test Cases ***
case1
    [Tags]   功能点1  unstable
    log to console  执行API功能点1测试
    fail

case2
    [Tags]   功能点2  stable
    log to console  执行API功能点2测试

case3
    [Tags]   功能点3   stable
    log to console  执行API功能点3测试

case4
    log to console  执行API功能点4测试


#指定包含某标签的用例运行
#robot  --include tag1  datasource

#过滤包含某标签的用例
#robot  --exclude tag1 datasorce