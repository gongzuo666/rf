#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : 自动化执行rf文件.py
# Author: tian guang yuan
# Time  : 2020/8/9 16:12
# 需求：执行用例自动将报告存在以日期命名的文件夹中
import os
import time

print(time.strftime("%Y-%m-%d-%H-%M", time.localtime()) )
date=time.strftime("%Y-%m-%d-%H-%M-%S", time.localtime())
# 执行RF命令
# 参数-d  指定测试报告输出路径
os.system(f'robot --name 回归测试 -d rfreport_{date} bigsuite')






