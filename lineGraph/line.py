import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import seaborn as sns
import xlrd
import xlwt
import copy
import os

def read_excel(versions, method):
    """
    方法，加载方法数据
    :param method:  方法数
    :param versions: 版本数量
    :return:
    """
    url = os.getcwd()
    path = url + "/resource/tcars.xlsx"
    data = xlrd.open_workbook(path)

    table = data.sheet_by_index(0)
    precision = []
    for index in range(0,method):
        result = []
        for count in range(0,versions):
            tempResult = table.cell(count, index).value
            result.append(tempResult)
        precision.append(result)

    return copy.deepcopy(precision)

def DrawLineGraph(dataX, dataY1, dataY2, dataY3, labelX, labelY, title):
    """
    方法，绘制折线图
    :param dataX: 横坐标数据
    :param dataY1: 方法一纵坐标数据
    :param dataY2: 方法二纵坐标数据
    :param dataY3: 方法三纵坐标数据
    :param labelX: X 轴坐标
    :param labelY: Y 轴坐标
    :param title:  标题
    :return:
    """
    # 设置中文显示
    plt.rcParams['font.sans-serif'] = 'SimHei'
    plt.rcParams['axes.unicode_minus'] = False

    font1 = {'family': 'Times New Roman',
             'weight': 'normal',
             'size': 15,
             }

    x = range(len(dataX))

    plt.ylim(0.0, 1.0)  # 限定纵轴的范围
    plt.plot(dataY1, marker='o', mec='b', mfc='w', label='IETCR')
    plt.plot(dataY2, marker='^', mec='orange', mfc='w', label='FTMES')
    plt.plot(dataY3, marker='x', mec='g', mfc='w', label='SAMP(30%)')


    plt.legend()  # 让图例生效
    #plt.xticks(x, dataX, rotation=0, step = 5)
    plt.xticks(np.arange(0, len(dataX)+1, step=5))
    plt.margins(0)
    plt.subplots_adjust(bottom=0.15)
    plt.xlabel(labelX, font1)  # X轴标签
    plt.ylabel(labelY, font1)  # Y轴标签
    plt.title(title, font1)  # 标题
    plt.tick_params(labelsize=15)

    plt.show()

count = 45
data = read_excel(versions=count, method=3)

dataX = []
for index in range(1,count+1):
    dataX.append(index)

DrawLineGraph(dataX= dataX, dataY1=data[0], dataY2=data[1], dataY3=data[2], labelX="Program versions", labelY=" MTP percentage of original MBFL", title="tcas")