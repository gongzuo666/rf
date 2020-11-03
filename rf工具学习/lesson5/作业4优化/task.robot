*** Settings ***
#引用测试库--python写的测试库
Library  SeleniumLibrary
#引用资源文件--资源文件相对路径
Resource   rc.robot
Suite Setup   webtestSetup
Suite Teardown   webtestTeardown

*** Test Cases ***
添加课程1
    [Setup]    deleteAllLesson
    loginWebSite
    addCourse  robotframework     rf课程     2
    checkCourse  robotframework


添加课程2

    loginWebSite
    addCourse  selenium     webui课程     1
    checkCourse  selenium   robotframework









