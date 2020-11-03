#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : WebOpAdmin.py
# Author: tian guang yuan
# Time  : 2020/8/24 14:37
from selenium import webdriver
from selenium.webdriver.support.ui import Select
from rf工具学习.lesson6.作业6.conf.cfg import *
import time

class WebOpAdmin():
    # 保证仅实例化一次
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def setupWebTest(self,driverType='chrome'):
        # self.cur_wd 保存 WebDriver 对象
        self.cur_wd = None
        if driverType == 'chrome':
            self.cur_wd = webdriver.Chrome()
        elif driverType == 'firefox':
            self.cur_wd = webdriver.Firefox()
        else:
            raise Exception('unknow driver type %s' % driverType)

        self.cur_wd.implicitly_wait(10)

    def tearDownWebTest(self):
        self.cur_wd.quit()

    # 定义一个通用的删除方法
    def DeleteAll(self,objName):
        if objName == 'course':
            self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref=course]').click()
        elif objName == 'teacher':
            self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref=teacher]').click()
        elif objName == 'Training':
            self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref="training"]').click()
        elif objName == 'traininggrade':
            self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref="traininggrade"]').click()
        else:
            raise Exception('keyword DeleteAll get unknow obj Name %s' % objName)

        self.cur_wd.implicitly_wait(2)
        while True:
            delButtons = self.cur_wd.find_elements_by_css_selector('*[ng-click^=delOne]')

            if delButtons == []:
                break
            delButtons[0].click()
            self.cur_wd.find_element_by_css_selector('.modal-footer  .btn-primary').click()
            time.sleep(1)

        self.cur_wd.implicitly_wait(10)

    # 定义登录方法
    def loginWebSite(self):
        self.cur_wd.get(MgrLoginUrl)

        # self.cur_wd.find_element_by_id('username').send_keys(user1['name'])
        # self.cur_wd.find_element_by_id('password').send_keys(user1['pw'])

        self.cur_wd.find_element_by_tag_name('button').click()

    # 定义添加课程方法
    def AddCourse(self, name,desc,idx):
        self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref=course]').click()

        self.cur_wd.find_element_by_css_selector('button[ng-click^=showAddOne]').click()

        ele = self.cur_wd.find_element_by_css_selector("input[ng-model='addData.name']")
        ele.clear()
        ele.send_keys(name)

        ele = self.cur_wd.find_element_by_tag_name("textarea")
        ele.clear()
        ele.send_keys(desc)

        ele = self.cur_wd.find_element_by_css_selector("input[ng-model='addData.display_idx']")
        ele.clear()
        ele.send_keys(idx)

        self.cur_wd.find_element_by_css_selector('button[ng-click^=addOne]').click()

        time.sleep(1)

    # 定义添加老师方法
    def  AddTeacher(self,realname,username,desc,idx,lesson):
        self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref=teacher]').click()

        self.cur_wd.find_element_by_css_selector('button[ng-click^=showAddOne]').click()

        ele = self.cur_wd.find_element_by_css_selector(
            "input[ng-model='addEditData.realname']")
        ele.clear()
        ele.send_keys(realname)

        ele = self.cur_wd.find_element_by_css_selector(
            "input[ng-model='addEditData.username']")
        ele.clear()
        ele.send_keys(username)

        ele = self.cur_wd.find_element_by_css_selector(
            "textarea[ng-model='addEditData.desc']")
        ele.clear()
        ele.send_keys(desc)

        ele = self.cur_wd.find_element_by_css_selector(
            "input[ng-model='addEditData.display_idx']")
        ele.clear()
        ele.send_keys(idx)

        select = Select(self.cur_wd.find_element_by_css_selector(
            'select[ng-model*=courseSelected]'))
        select.select_by_visible_text(lesson)

        self.cur_wd.find_element_by_css_selector('button[ng-click*=addTeachCourse]').click()

        self.cur_wd.find_element_by_css_selector('button[ng-click^=addOne]').click()

        time.sleep(1)

    # 定义添加培训班方法
    def  AddTraining(self,realname,desc,idx,lesson):
        self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref="training"]').click()

        self.cur_wd.find_element_by_css_selector('button[ng-click="showAddOne=true"]').click()

        ele = self.cur_wd.find_element_by_css_selector(
            'input[ng-model="addEditData.name"]')
        ele.clear()
        ele.send_keys(realname)

        ele = self.cur_wd.find_element_by_css_selector(
            'textarea[ng-model="addEditData.desc"]')
        ele.clear()
        ele.send_keys(desc)

        ele = self.cur_wd.find_element_by_css_selector(
            'input[ng-model="addEditData.display_idx"]')
        ele.clear()
        ele.send_keys(idx)

        select = Select(self.cur_wd.find_element_by_css_selector(
            'select[ng-model="$parent.courseSelected"]'))
        select.select_by_visible_text(lesson)

        self.cur_wd.find_element_by_css_selector('button[ng-click="addEditData.addTeachCourse()"]').click()

        self.cur_wd.find_element_by_css_selector('button[ng-click="addOne()"]').click()

        time.sleep(1)

    # 定义添加培训班期方法
    def  addtraininggrade(self,realname,desc,idx,lesson):
        self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref="traininggrade"]').click()

        self.cur_wd.find_element_by_css_selector('button[ng-click="showAddOne=true"]').click()

        ele = self.cur_wd.find_element_by_css_selector(
            'input[ng-model="addEditData.name"]')
        ele.clear()
        ele.send_keys(realname)

        ele = self.cur_wd.find_element_by_css_selector(
            'textarea[ng-model="addEditData.desc"]')
        ele.clear()
        ele.send_keys(desc)

        ele = self.cur_wd.find_element_by_css_selector(
            'input[ng-model="addEditData.display_idx"]')
        ele.clear()
        ele.send_keys(idx)

        select = Select(self.cur_wd.find_element_by_css_selector(
            'select[ng-model="$parent.addEditData.training_id"]'))
        select.select_by_visible_text(lesson)

        self.cur_wd.find_element_by_css_selector('button[ng-click="addOne()"]').click()

        time.sleep(1)

    # 定义方法，老师模块，返回检查内容
    def  GetTeacherList(self):
        self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref=teacher]').click()

        eles = self.cur_wd.find_elements_by_css_selector('tr>td:nth-child(2)')

        return [ele.text for ele in eles]

    # 定义方法，课程模块，返回检查内容
    def GetCourseList(self):
        self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref=course]').click()

        eles = self.cur_wd.find_elements_by_css_selector('tr>td:nth-child(2)')

        return [ele.text for ele in eles]

    # 定义方法，培训班模块，返回检查内容
    def GetTrainingList(self):
        self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref="training"]').click()

        # 试试 //tr/td[2]/span/text()
        eles = self.cur_wd.find_elements_by_css_selector('tr td:nth-child(2)')

        return [ele.text for ele in eles]

    # 定义方法，培训班期，返回检查内容
    def GetTraininggradeList(self):
        self.cur_wd.find_element_by_css_selector('ul.nav a[ui-sref="traininggrade"]').click()

        eles = self.cur_wd.find_elements_by_css_selector('tr td:nth-child(2)')

        return [ele.text for ele in eles]
