#变量表-可以定义全局变量
*** Settings ***
#使用变量表
#Resource  rc.robot
#声明使用变量文件 cfg.py
#Variables  conf/cfg.py

*** Test Cases ***
case1
    log to console  ${MgrLoginUrl}
    log to console  ${database}[0]
    log to console  ${database}[1]

case2
    log to console  ${StudentLoginUrl}
    log to console  ${user1}[name]
    log to console  ${user1}[pw]