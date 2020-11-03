*** Settings ***
Library  SeleniumLibrary
Suite Setup  OpenBrowser  http://baidu.com    chrome
Suite Teardown    CloseBrowser

*** Test Cases ***
case1
    log to console  执行UI自动化1

case2
    log to console  执行UI自动化2