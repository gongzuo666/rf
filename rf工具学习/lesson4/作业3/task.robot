*** Settings ***
Library  SeleniumLibrary
Library  courselib
# 引用资源文件-资源文件相对路径
Resource  ../rc.robot

*** Test Cases ***
添加课程1
    [Setup]    deleteAllLesson
    loginWebSite
    addCourse  robotframework     rf课程     2
    checkCourse  robotframework

    # 关闭浏览器
    close browser


添加课程2

    loginWebSite
    addCourse  selenium     webui课程     1
    checkCourse  selenium   robotframework

    # 关闭浏览器
    close browser








