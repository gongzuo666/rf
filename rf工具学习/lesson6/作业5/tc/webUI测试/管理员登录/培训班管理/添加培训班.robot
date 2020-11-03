*** Settings ***
#引用资源文件--资源文件相对路径
Resource   rflib/rc.robot

*** Test Cases ***
添加培训班
    [Setup]   run keywords  deleteallTrainings   AND   deleteAllLesson
    ...      AND   addCourse   初中语文   语文课  2
    ...      AND   addCourse   初中数学   数学课  1

    log to console  执行添加培训班用例
    addTraining   初中班    初中班级   1    初中语文
    checkTraining  初中班







