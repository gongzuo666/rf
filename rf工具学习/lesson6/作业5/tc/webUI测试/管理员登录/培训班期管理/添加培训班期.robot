*** Settings ***
#引用资源文件--资源文件相对路径
Resource   rflib/rc.robot

*** Test Cases ***
添加培训班
    [Setup]   run keywords  deleteallGrades  AND   deleteallTrainings
    ...      AND   addTraining   初中班    初中班级   1    初中语文

    log to console  执行添加培训班期用例
    addGrade   初中班1期    授课‘初中语文’，‘初中数学’   1    初中班
    checkGrade  初中班1期







