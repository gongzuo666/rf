#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : 自动化运行.py
# Author: tian guang yuan
# Time  : 2020/8/31 16:43
import os
import time

print(time.strftime("%Y-%m-%d-%H-%M-%S", time.localtime()))
date = time.strftime("%Y-%m-%d-%H-%M-%S", time.localtime())
# 执行RF命令
# 参数-d  指定测试报告输出路径
os.system(f'robot -d rfreport_{date} -P . 添加老师.robot')
