#UI测试需要引入测试库-SeleniumLibrary
*** Settings ***
Library  SeleniumLibrary    #库名不能写错，大小写敏感
*** Test Cases ***
用例
    # 打开浏览器-访问百度页面
    open browser    https://www.baidu.com/    chrome
    set selenium implicit wait  10
    #输入关键字-松勤
    input text      css=#kw   松勤
    #点击百度搜索
    click element  id=su
    #查看第一个搜索结果
    ${res}    get text  css=[id="1"]>h3>a
    log to console  ${res}
    #校验
    should contain  ${res}    软件测试-软件测试在线教育领跑者-国内最专业的软件...
    #关闭浏览器
    close browser



