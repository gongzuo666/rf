*** Settings ***
Library  SeleniumLibrary
Library  courselib
*** Test Cases ***
添加课程
    [Setup]    deleteAllLesson
    open browser    http://localhost/mgr/login/login.html   chrome
    set selenium implicit wait  10
    #输入用户名密码
#    input text  id="username"   auto
#    input text  id="password"   sdfsdfsdf
    click element   css=.btn-success
    #添加课程
    # 点击添加课按钮
    click element   css=[ng-click="showAddOne=true"]
    input text  css=[ng-model="addData.name"]   语文课
    input text  css=[ng-model="addData.desc"]   语文描述
    input text  css=[ng-model="addData.display_idx"]    1
    # 点击确定创建按钮
    click element   css=[ng-click="addOne()"]

    # 检查课程
    ${courses}   get webelements     css=tr td:nth-child(2)
    ${actrual}   evaluate    [course.text for course in $courses]
    log to console  ${actrual}
    should be true      $actrual==['语文课']

    # 关闭浏览器
    close browser












