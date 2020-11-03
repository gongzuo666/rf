#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : base.py
# Author: tian guang yuan
# Time  : 2020/8/18 22:16
from robot.api import logger
class Father():
    def __init__(self):
        logger.console('调用父类初始化方法---可被子类继承')

    def make_money(self):
        self.money=10000



