*** Settings ***
#引用资源文件--资源文件相对路径
Library    pylib.WebOpAdmin

*** Test Cases ***
添加老师
    [Setup]   Run keywords   DeleteAll  teacher   AND   DeleteAll   course
    ...      AND   addCourse   初中语文   语文课  2
    ...      AND   addCourse   初中数学   数学课  1

    log to console  执行添加老师用例
    addTeacher   小红   xiaohong    语文老师   1    初中语文
    ${teachers}=   GetTeacherList
    Should Be True    $teachers==[u'小红']

    addTeacher   小明   xiaoming    数学老师   2    初中数学
    ${teachers}=   GetTeacherList
    Should Be True    $teachers==[u'小红',u'小明']








