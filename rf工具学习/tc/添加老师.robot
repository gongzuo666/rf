*** Settings ***
Library  pylib.teacher

*** Test Cases ***
用例
    # 添加课程
    ${inData}    set variable    {"name": "初中化学", "desc": "初中化学课程", "display_idx": "1"}
    add course  ${inData}
    # 列出课程,返回id、name
    ${inId}  ${inName}   list course
    # 添加老师
    ${inData2}    set variable    {"username": "zhangsan","password": "123456","realname": "张三","desc": "张三老师","courses": [{"id": ${inId}, "name": "${inName}"}],"display_idx": 1}
    ${teacherId}    add teacher  ${inData2}
    # 打印老师id
    log to console  ${teacherId}
    # 列出老师信息
    ${teachlist}    list teacher
    log to console  ${teachlist}
    # 删除老师
    delete teacher  ${teacherId}
    # 删除课程
    delete course  ${inId}