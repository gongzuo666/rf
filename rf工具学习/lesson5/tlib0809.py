#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @File  : tlib0809.py
# Author: tian guang yuan
# Time  : 2020/8/17 22:15
# def get_list():
#     return [i for i in range(10)]

from robot.api import logger
class Sublib():
    def connect_db(self,ip,port,table):
        logger.console(f'start connect db{ip}:{port} ....{table}')

    def search_data(self):
        logger.console('retrun search data.....')

class Sublib2():
    def __init__(self,ip,port,table='student'):
        self.ip=ip
        self.port=port
        self.table=table

    def connect_db(self):
        logger.console(f'start connect db{self.ip}:{self.port} ....{self.table}')

    def search_data(self):
        logger.console('retrun search data.....')

class tlib0809():
    def __init__(self,ip,port,table='student'):
        self.ip=ip
        self.port=port
        self.table=table

    def connect_db2(self):
        logger.console(f'start connect db{self.ip}:{self.port} ....{self.table}')

    def search_data2(self):
        logger.console('retrun search data.....')

