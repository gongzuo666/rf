#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
@File  : delete_curriculum.py
@Author: tian guang yuan
@Time  : 2020/6/15 13:49
"""
import requests
# def add_course():
#     # 1、路径-url
#     Host = 'http://127.0.0.1:80'
#     api_url = f'{Host}/api/mgr/sq_mgr/'
#     header = {'Content-Type': 'application/x-www-form-urlencoded'}
#     # 2、参数
#     payload = {
#                 'action': 'add_course',
#                 'data': '''{
#                           "name":"初中化学1",
#                           "desc":"初中化学课程",
#                           "display_idx":"2"
#                             }'''
#               }
#     reps = requests.post(api_url, data=payload, headers=header)
#     reps.encoding = 'unicode_escape'  # 设置响应编码--显示中文
#     # 打印响应内容--字符串类型
#     # print(reps.text)
#     return reps.text

import json

# 1、新增课程
def add_course(inData):
    HOST = 'http://127.0.0.1:80'
    api_url = f'{HOST}/api/mgr/sq_mgr/'
    header = {'Content-Type': 'application/x-www-form-urlencoded'}
    payload = {
        'action': 'add_course',
        'data': inData
    }
    reps = requests.post(api_url, data=payload, headers=header)
    reps.encoding = 'unicode_escape'
    return reps.text

# 2、列出课程
def list_course():
    HOST = 'http://127.0.0.1:80'
    # 1、路径-url
    api_url = f'{HOST}/api/mgr/sq_mgr/?action=list_course&pagenum=1&pagesize=20'
    reps = requests.get(api_url)
    reps.encoding = 'unicode_escape'
    rep = reps.text
    inId = json.loads(rep)['retlist'][0]['id']
    inName = json.loads(rep)['retlist'][0]['name']
    return inId,inName

# 3、删除课程
def delete_course(inId):
    HOST = 'http://127.0.0.1:80'
    api_url = f'{HOST}/api/mgr/sq_mgr/'
    header = {'Content-Type': 'application/x-www-form-urlencoded'}
    payload = {
        'action': 'delete_course',
        'id': inId
    }
    reps = requests.delete(api_url, data=payload, headers=header)
    reps.encoding = 'unicode_escape'
    return reps.text

# 4、新增老师
def add_teacher(inData2):
    Host = 'http://127.0.0.1:80'
    api_url = f'{Host}/api/mgr/sq_mgr/'
    header = {'Content-Type': 'application/x-www-form-urlencoded'}
    payload = {
        'action': 'add_teacher',
        'data': inData2
    }
    reps = requests.post(api_url, data=payload, headers=header)
    reps.encoding = 'unicode_escape'
    return json.loads(reps.text)['id']

# 5、列出老师
def list_teacher():
    HOST = 'http://127.0.0.1:80'
    api_url = f'{HOST}/api/mgr/sq_mgr/?action=list_teacher&pagenum=1&pagesize=20'
    reps = requests.get(api_url)
    reps.encoding = 'unicode_escape'
    return reps.text

# 6、删除老师
def delete_teacher(inId):
    HOST = 'http://127.0.0.1:80'
    api_url = f'{HOST}/api/mgr/sq_mgr/'
    header = {'Content-Type': 'application/x-www-form-urlencoded'}
    payload = {
        'action': 'delete_teacher',
        'id': inId
    }
    reps = requests.delete(api_url, data=payload, headers=header)
    reps.encoding = 'unicode_escape'
    return reps.text








