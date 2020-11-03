#1.导入关键字模块文件
*** Settings ***
Library  course_mgr
Library  SeleniumLibrary
Library  Collections
*** Test Cases ***
case1
    ${courses}      listCourse
#   log to console  ${course}
    FOR  ${course}  IN  @{courses}
    log  ${course}
    END
    #验证是否符合预期
    ${actual}   evaluate    [course['name'] for course in $courses]
    should be true      $actual==['数学课','语文课']

case2
   open browser  https://www.vmall.com/   chrome
   set selenium implicit wait  10
   #获取热销单品
   ${items}   get webelements    css=.home-hot-goods .grid-title
   FOR  ${i}  IN  @{items}
   log  ${i.text}
   END
   close browser















