*** Settings ***
Resource  rc/资源文件.robot

*** Test Cases ***
用例1
    ${dict}     create dictionary
    kw6-键值对     &{dict}