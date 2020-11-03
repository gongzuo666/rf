*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
百度搜索松勤
    # 打开浏览器-访问百度页面
    open browser    http://www.baidu.com    chrome
    set browser implicit wait  5
    # 输入关键字-松勤、\n搜索
    input text          id=kw           松勤\n
    # 查看第一个搜索结果
    ${firstRet}=        get text        id=1
    #校验
    should contain      ${firstRet}     松勤网