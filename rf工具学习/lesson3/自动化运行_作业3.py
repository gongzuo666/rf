#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : 自动化运行_作业3.py
# Author: tian guang yuan
# Time  : 2020/8/12 9:00
# 需求：执行用例自动将报告存在以日期命名的文件夹中
import os
import time

print(time.strftime("%Y-%m-%d-%H-%M", time.localtime()) )
date=time.strftime("%Y-%m-%d-%H-%M-%S", time.localtime())
# 执行RF命令
# 参数-d  指定测试报告输出路径
os.system(f'robot -d rfreport_{date} -P 作业3 作业3')


