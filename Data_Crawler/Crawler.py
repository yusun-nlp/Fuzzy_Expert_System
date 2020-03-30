import re
import requests
from bs4 import BeautifulSoup

areas = ['pudong', 'minhang', 'baoshan', 'xuhui', 'putuo', 'yangpu', 'changning', 'songjiang',
         'jiading', 'huangpu', 'jingan', 'hongkou', 'qingpu', 'fengxian', 'jinshan']

def spider():
    # file_csv = open('lianjia_data.csv', 'w', encoding='utf-8')
    # file_csv.write(
    #     '小区名称' + ',' + '地区' + ',' + '镇' + ',' + '户型（室/厅）' + ',' + '面积（平方米）' + ',' + '楼层' + ',' + '朝向' + ',' + '建成时间（年）' + ',' + '单价（元/平方米）' + ',' + '总价（万元）' + '\n')

    for area in areas:

        global area_index
        current_page = 1  # 当前在第几页
        total_page = 50

        '''将拼音与可视化的中文名对应'''
        if area == 'pudong':
            area_index = '7'
        elif area == 'minhang':
            area_index = '8'
        elif area == 'baoshan':
            area_index = '9'
        elif area == 'xuhui':
            area_index = '2'
        elif area == 'putuo':
            area_index = '5'
        elif area == 'yangpu':
            area_index = '6'
        elif area == 'changning':
            area_index = '3'
        elif area == 'songjiang':
            area_index = '11'
        elif area == 'jiading':
            area_index = '10'
        elif area == 'huangpu':
            area_index = '1'
        elif area == 'jingan':
            area_index = '0'
        elif area == 'hongkou':
            area_index = '4'
        elif area == 'qingpu':
            area_index = '12'
        elif area == 'fengxian':
            area_index = '13'
        elif area == 'jinshan':
            area_index = '14'
        else:
            print('wrong areas!')

        '''获取当前一共多少页'''
        url = 'http://sh.lianjia.com/ershoufang/%s/' % area
        headers = {
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'
        }
        response = requests.get(url=url, headers=headers)
        response = response.text.encode(response.encoding).decode('utf-8')  # 将爬取下来的Unicode编码换成utf-8编码
        soup = BeautifulSoup(response, 'html.parser')  # 对响应的链接源代码进行html解析
        for link in soup.find_all('div', 'resultDes clear'):
            context = link.get_text()
            total_house = re.findall(r"\d+\.?\d*", context)  # 总共有多少套房子
            total_p = int(total_house[0]) / 30 + 1  # 求出一共有多少页
            total_page = min(total_page, total_p)

        '''遍历这个区域的所有房子的信息'''
        while current_page <= total_page:
            name = []
            location = []
            sum_price = []  # 万元
            unit_price = []  # 元/平方米
            room_type = []
            room_num = []
            room_area = []  # 平方米
            room_chaoxiang_index = []
            room_status = []
            room_status_index = []
            room_floor = []
            room_floor_index = []
            time = []  # 年
            if_subway = []
            url = 'http://sh.lianjia.com/ershoufang/%s/pg%d/' % (area, current_page)
            headers = {
                'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'
            }
            response = requests.get(url=url, headers=headers)
            response = response.text.encode(response.encoding).decode('utf-8')  # 将爬取下来的Unicode编码换成utf-8编码
            soup = BeautifulSoup(response, 'html.parser')  # 对响应的链接源代码进行html解析

            for pos in soup.find_all('div', 'positionInfo'):
                context = pos.get_text()
                n = context.split('-')[0].lstrip().rstrip()
                l = context.split('-')[1].lstrip().rstrip()
                name.append(n)
                location.append(l)
            for price in soup.find_all('div', 'totalPrice'):  # 总价的信息
                sum_p = price.get_text()
                sum_p = sum_p[:-1]  # 把最后的一个万字去掉
                sum_price.append(sum_p)
            for price in soup.find_all('div', 'unitPrice'):  # 单价的信息
                unit_p = price.get_text()
                unit_p = unit_p[:-4]  # 把元/平米去掉
                unit_p = unit_p[2:]  # 把单价去掉
                unit_price.append(unit_p)
            for link in soup.find_all('div', 'houseInfo'):  # 房子的相关信息，排除出各种别墅
                # print url
                context = link.get_text()
                # print 'info:'+context
                room_t = context.split('|')[0]
                room_n = room_t[0].split('室')[0]
                room_a = context.split('|')[1][:-3]  # 把平米两个字去掉
                room_cx = context.split('|')[2]
                if room_cx == ' 南 北 ':
                    room_cx_index = '0'
                elif room_cx == ' 南 ':
                    room_cx_index = '1'
                elif room_cx == ' 东南 ':
                    room_cx_index = '2'
                elif room_cx == ' 东 ':
                    room_cx_index = '3'
                elif room_cx == ' 西南 ':
                    room_cx_index = '4'
                elif room_cx == ' 西 ':
                    room_cx_index = '5'
                elif room_cx == ' 北 ':
                    room_cx_index = '6'
                else:
                    room_cx_index = '6'
                room_s = context.split('|')[3]
                if room_s ==' 简装 ':
                    room_s_index='1'
                elif room_s==' 精装 ':
                    room_s_index ='2'
                else:
                    room_s_index ='0'
                room_f = context.split('|')[4]
                room_f_d = str(room_f).split('楼')[0]
                if room_f_d == ' 高':
                    room_f_index = '2'
                elif room_f_d == ' 中':
                    room_f_index = '1'
                elif room_f_d == ' 低':
                    room_f_index = '0'
                else:
                    room_f_index = '2'
                t = context.split('|')[5][:-3]  # 去掉年建
                room_type.append(room_t)
                room_num.append(room_n)
                room_area.append(room_a)
                room_chaoxiang_index.append(room_cx_index)
                room_status_index.append(room_s_index)
                room_floor.append(room_f)
                room_floor_index.append(room_f_index)
                time.append(t)
            for subway in soup.find_all('div', 'tag'):
                context = subway.get_text()
                if '近地铁' in context:
                    if_s = "true"
                else:
                    if_s = "false"
                if_subway.append(if_s)

            for item in range(len(sum_price)):
                if str(time[item]) == '':
                    continue
                file_txt = open('input/%s_pg%d_%d.txt' % (area, current_page, item), 'a', encoding='utf-8')

                # file_txt.write(str(name[item]) + ',' + area_cn + ',' + str(location[item]) + ',' + str(
                #     room_type[item]) + ',' + str(room_area[item]) + ',' + str(room_floor[item]) + ',' + str(
                #     room_chaoxiang[item]) + ',' + time[item] + ',' + str(unit_price[item]) + ',' + str(
                #     sum_price[item]) + '\n')
                file_txt.write(
                    '{\n\t"name": "' + str(name[item]) + '",\n\t"area": ' + area_index + ',\n\t"location": "' + str(
                        location[item]) + '",\n\t"room_type": "' + str(room_type[item]) + '",\n\t"room_num": ' + str(
                        room_num[item]) + ',\n\t"room_chaoxiang": ' + str(
                        room_chaoxiang_index[item]) + ',\n\t"room_status": ' + str(
                        room_status_index[item]) + ',\n\t"room_area": ' + str(
                        room_area[item]) + ',\n\t"room_floor": ' + str(
                        room_floor_index[item]) + ',\n\t"floor": "' + str(
                        room_floor[item]) + '",\n\t"room_time": ' + str(
                        time[item]) + ',\n\t"room_price": ' + str(sum_price[item]) + ',\n\t"if_subway": ' + str(
                        if_subway[item]) + '\n}')
                file_txt.close()
                # file_csv.write(','.join((str(name[item]), area_cn, str(location[item]), str(
                #     room_type[item]), str(room_area[item]), str(room_floor[item]), str(
                #     room_chaoxiang[item]), time[item], str(unit_price[item]), str(
                #     sum_price[item]))) + '\n')

            current_page = current_page + 1

    # file_csv.close()


spider()
