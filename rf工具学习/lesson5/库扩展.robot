*** Settings ***
Library  other
Library  extend.Child

*** Test Cases ***
case1
    ${res}  get_user
    log to console  ${res}


case2
    make money
    use money  2000
    fun