*** Settings ***
#引用资源文件--资源文件相对路径
Resource   rflib/rc.robot

*** Test Cases ***
添加课程1
    [Setup]    deleteAllLesson

    addCourse  robotframework     rf课程     2
    checkCourse  robotframework


添加课程2

    addCourse  selenium     webui课程     1
    checkCourse  selenium   robotframework









