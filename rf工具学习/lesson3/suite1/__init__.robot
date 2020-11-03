*** Settings ***
Suite Setup    log to console   &&&&&&执行目录套件初始化
Suite Teardown    log to console   &&&&&&执行目录套件清除
#作用套件内没有定义初始化与清除的用例，如果套件文件定义则使用套件文件的，遵循就近原则
Test Setup    log to console   @@@@@执行用例目录默认初始化
Test Teardown    log to console   @@@@@执行用例目录默认清除