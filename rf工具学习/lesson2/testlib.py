#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : testlib.py
# Author: tian guang yuan
# Time  : 2020/8/9 17:45
#查询课程
import requests
# from rf工具学习.lesson2.login import login
from robot.api import logger

def get_course_list():

    # user_session = login('auto', 'sdfsdfsdf')
    # user_cookie = {'sessionid':user_session}
    api_url = 'http://127.0.0.1:80/api/mgr/sq_mgr/?action=list_course&pagenum=1&pagesize=20'
    # reps = requests.get(api_url,cookies=user_cookie)
    reps = requests.get(api_url)
    # print(reps.json())
    return reps.json()['reason']

#传参
def check_score(score):
    if int(score)>60:
        print('及格')
        logger.console('及格了')
    else:
        print('再好好复习')
        logger.console('再好好复习了')

def connect_db(ip,port=3306,db='test',table='student'):
    logger.console(f'连接数据库{ip}：{port},连接库表{db}：{table}')

def list_student(*stu):
    for st in stu:
        # print(st)
        logger.console(st)


def list_teacher(**teacher):
    for te in teacher:
        logger.console(teacher[te])

if __name__ == '__main__':
    res={"a":"语文","b":"英语","c":"数学"}
    list_teacher(**res)








