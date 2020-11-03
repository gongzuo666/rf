#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : course_mgr.py
# Author: tian guang yuan
# Time  : 2020/8/10 10:08
#查询课程
import requests

def listCourse():
    # 1、登录
    Host = 'http://127.0.0.1:80'
    log_url = f'{Host}/api/mgr/loginReq'
    header = {'Content-Type': 'application/x-www-form-urlencoded'}
    payload = {"username": "auto", 'password': "sdfsdfsdf"}
    reps = requests.post(log_url, data=payload, headers=header)
    user_session = reps.cookies['sessionid']
    # 查询课程
    user_cookie = {'sessionid': user_session}
    url = f'{Host}/api/mgr/sq_mgr/?action=list_course&pagenum=1&pagesize=20'
    reps = requests.get(url, cookies=user_cookie)
    return reps.json()['retlist']

if __name__ == '__main__':
    print(listCourse())








