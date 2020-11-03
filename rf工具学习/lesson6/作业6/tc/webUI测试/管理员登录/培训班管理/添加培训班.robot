*** Settings ***
#引用资源文件--资源文件相对路径
Library    pylib.WebOpAdmin

*** Test Cases ***
添加培训班
[Setup]   run keywords  DeleteAll  Training   AND   DeleteAll    course
    ...      AND   AddCourse   初中语文   语文课  2
    ...      AND   AddCourse   初中数学   数学课  1

    log to console  执行添加培训班用例
    AddTraining   初中班    初中班级   1    初中语文
    ${Trainings}=   GetTrainingList
    Should Be True    Trainings==[u'初中班']







