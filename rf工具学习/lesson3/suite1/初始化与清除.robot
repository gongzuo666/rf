*** Settings ***
#定义套件级别初始化与清除
Suite Setup   log to console   ￥￥￥￥开始执行套件初始化
Suite Teardown    log to console   ￥￥￥￥开始执行套件清除

#默认初始化与清除，只会作用在本身没有自定义初始化与清除的用例
Test Setup    log to console   @@@@@执行用例默认初始化
Test Teardown    log to console   @@@@@执行用例默认清除


*** Test Cases ***
用例1
    [Setup]   log to console  @@@@@开始执行用例初始化操作
    [Teardown]   log to console   @@@@@开始执行用例清除操作
    log to console  执行用例001主体操作

用例2
    [Setup]   log to console  @@@@@开始执行用例初始化操作
    [Teardown]   log to console   @@@@@开始执行用例清除操作
    log to console  执行用例002主体操作

用例3
    log to console  执行用例003
