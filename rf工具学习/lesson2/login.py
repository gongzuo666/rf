#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : login.py
# Author: tian guang yuan
# Time  : 2020/8/9 17:55

import requests
def login(username,password):
    # 1、路径-url
    Host = 'http://127.0.0.1:80'
    log_url = f'{Host}/api/mgr/loginReq'
    header = {'Content-Type': 'application/x-www-form-urlencoded'}
    # 2、参数
    payload = {"username": username, 'password': password}
    reps = requests.post(log_url, data=payload, headers=header)
    return reps.cookies['sessionid']

if __name__ == '__main__':
    print(login('auto', 'sdfsdfsdf'))
