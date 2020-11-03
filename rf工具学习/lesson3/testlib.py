#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : testlib.py
# Author: tian guang yuan
# Time  : 2020/8/9 21:44

from robot.api import logger
def check_score(score):
    if int(score) >60:
        logger.console('及格了，恭喜')
    else:
        logger.console('请继续努力')
















