*** Settings ***
#Library  webOPadmin

*** Test Cases ***
cas1
    [Template]   数据驱动关键字
    abc
    #RF擅长复杂环境的用例管理，于目录层级结构管理，不同目录的数据环境公用


*** Keywords ***
数据驱动关键字
    [Arguments]   ${args}
    log to console    ${args}