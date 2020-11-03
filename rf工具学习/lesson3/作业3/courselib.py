#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : WebOpAdmin.py
# Author: tian guang yuan
# Time  : 2020/8/11 22:31
import time

from selenium import webdriver
def deleteAllLesson():
    driver = webdriver.Chrome()
    driver.implicitly_wait(10)
    driver.get('http://localhost/mgr/login/login.html')
    # 登录
    # driver.find_element_by_id('username').send_keys('auto')
    # driver.find_element_by_id('password').send_keys('sdfsdfsdf')
    driver.find_element_by_css_selector('.btn-success').click()
    # 删除课程
    driver.implicitly_wait(1)
    while 1:
        del_btns = driver.find_elements_by_css_selector('[ng-click="delOne(one)"]')
        # 课程删除完，终止循环
        if del_btns==[]:
            print('删除完成')
            break
        # 点击删除按钮
        del_btns[0].click()
        # 点击确定按钮
        driver.find_element_by_css_selector('.btn-primary').click()
        # 等待弹出框消失
        time.sleep(1)
    driver.close()






if __name__ == '__main__':
    deleteAllLesson()


