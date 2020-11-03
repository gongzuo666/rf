*** Settings ***
#路径导入法-需要写上文件后缀名
#如果模块中有同名class-会直接导入--同模块导入法相同
#路径法-分隔符用斜杠
Library  pylib/tlib2.py


#如果class与模块不同名，应当采用模块导入法
Library  pylib.tlib2.Sublib
#Library  tlib2.Sublib2   localhost   9090   testL
Library  pylib.tlib2.tlib0809   localhost   9090



*** Test Cases ***
case1
    connect_db   123    123   123


