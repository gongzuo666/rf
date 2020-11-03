*** Settings ***
#引用资源文件--资源文件相对路径
Resource   rflib/rc.robot

*** Test Cases ***
添加老师
    [Setup]   run keywords  deleteallTeachers   AND   deleteAllLesson
    ...      AND   addCourse   初中语文   语文课  2
    ...      AND   addCourse   初中数学   数学课  1

    log to console  执行添加老师用例
    addTeacher   小红   xiaohong    语文老师   1    初中语文
    addTeacher   小明   xiaoming    数学老师   2    初中数学
    checkTeacher  xiaohong    xiaoming








