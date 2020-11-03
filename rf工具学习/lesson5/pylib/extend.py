#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : extend.py
# Author: tian guang yuan
# Time  : 2020/8/18 22:16
from base import Father
from robot.api import logger


class Child(Father):
    def __init__(self):
        super().__init__()
        logger.console('子类初始化方法')

    def use_money(self,cost):
        self.money -= int(cost)
        logger.console(f'剩余${self.money}')

    @staticmethod
    def fun():
        logger.console('12333')


if __name__ == '__main__':
    Child()



