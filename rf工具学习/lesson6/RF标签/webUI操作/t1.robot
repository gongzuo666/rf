

*** Settings ***
#表示强制给该套件下面所有用例都打上标签
Force Tags  回归测试

*** Test Cases ***
case1
    [Tags]   功能点1
    log to console  执行UI功能点1测试

case2
    [Tags]   功能点2
    log to console  执行UI功能点2测试

case3
    [Tags]   功能点3
    log to console  执行UI功能点3测试


#指定标签运行
#robot  --include tag1  datasource