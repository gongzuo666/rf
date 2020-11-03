
*** Keywords ***
loginWebSite
    open browser    http://localhost/mgr/login/login.html   chrome
    set selenium implicit wait  10
    #输入用户名密码
#    input text  id="username"   auto
#    input text  id="password"   sdfsdfsdf
    click element   css=.btn-success

addCourse
    [Arguments]     ${name}     ${desc}     ${idx}
    #添加课程
    # 点击添加课按钮
    click element   css=[ng-click="showAddOne=true"]
    input text  css=[ng-model="addData.name"]   ${name}
    input text  css=[ng-model="addData.desc"]   ${desc}
    input text  css=[ng-model="addData.display_idx"]    ${idx}
    # 点击确定创建按钮
    click element   css=[ng-click="addOne()"]
    sleep  1

checkCourse
    [Arguments]     @{expect}
    # 检查课程
    ${courses}   get webelements     css=tr td:nth-child(2)
    ${actrual}   evaluate    [course.text for course in $courses]
    log to console  ${actrual}
    # 处理预期结果数据类型 -
    ${exp}  evaluate  [name for name in $expect]
    should be true      $actrual==$exp

deleteAllLesson
    loginWebSite
    #开始删除课程
    set selenium implicit wait    2

    FOR   ${one}   IN RANGE   9999
        ${del_btns}   get webelements    css=[ng-click="delOne(one)"]
        #循环终止条件？课程删除完，删除按钮为空
        exit for loop if    $del_btns==[]
        #点击删除按钮
        click element   ${del_btns}[0]
        #点击确定按钮
        click element   css=.btn-primary
        #等待弹出框消失
        sleep  1
    END
    close browser






