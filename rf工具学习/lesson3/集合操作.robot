*** Settings ***
Library  Collections
*** Test Cases ***
case1
    ${list}     create list  a  b  c  d  e
    log to console  ${list}
    #追加列表
    append to list  ${list}     g  h  f
    log to console  ${list}






