import 'package:flutter/material.dart';

const int purple = 0xff3c1361;
const int red = 0xffff2525;
const int brightYellow = 0xffffe03d;
const int midYellow = 0xffffd03d;
const int yellow = 0xffffc03d;
const int silver = 0xfff2f5fc;
const int darkSilver = 0xffe7eefb;

const kBoxDecoration = BoxDecoration(
  border: Border(
    right: BorderSide(width: 2, color: Colors.white),
    left: BorderSide(width: 2, color: Colors.white),
    top: BorderSide(width: 2, color: Colors.white),
    bottom: BorderSide(width: 2, color: Colors.white),
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(40.0),
  ),
);

const kAlarmText = TextStyle(
  fontSize: 26.0,
  color: Color(purple),
);

const kAlarmNumber = TextStyle(
  fontSize: 40.0,
  color: Color(purple),
);

const kActiveButtonGradient = LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  colors: <Color>[
    Color(0xffffc03d),
    Color(0xffffd03d),
    Color(0xffffe03d),
  ],
);

const kInActiveButtonGradient = LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  colors: <Color>[
    Color(0xffe7eefb),
    Color(0xfff2f5fc),
  ],
);

class Constants {
  static const Map weatherCode = {
    '100': '晴',
    '101': '多云',
    '102': '少云',
    '103': '晴间多云',
    '104': '阴',
    '200': '有风',
    '201': '平静',
    '202': '微风',
    '203': '和风',
    '204': '清风',
    '205': '强风/劲风',
    '206': '疾风',
    '207': '大风',
    '208': '烈风',
    '209': '风暴',
    '210': '狂爆风',
    '211': '飓风',
    '212': '龙卷风',
    '213': '热带风暴',
    '300': '阵雨',
    '301': '强阵雨',
    '302': '雷阵雨',
    '303': '强雷阵雨',
    '304': '雷阵雨伴有冰雹',
    '305': '小雨',
    '306': '中雨',
    '307': '大雨',
    '308': '极端降雨',
    '309': '毛毛雨/细雨',
    '310': '暴雨',
    '311': '大暴雨',
    '312': '特大暴雨',
    '313': '冻雨',
    '314': '小到中雨',
    '315': '中到大雨',
    '316': '大到暴雨',
    '317': '暴雨到大暴雨',
    '318': '大暴雨到特大暴雨',
    '399': '雨',
    '400': '小雪',
    '401': '中雪',
    '402': '大雪',
    '403': '暴雪',
    '404': '雨夹雪',
    '405': '雨雪天气',
    '406': '阵雨夹雪',
    '407': '阵雪',
    '408': '小到中雪',
    '409': '中到大雪',
    '410': '大到暴雪',
    '499': '雪',
    '500': '薄雾',
    '501': '雾',
    '502': '霾',
    '503': '扬沙',
    '504': '浮尘',
    '507': '沙尘暴',
    '508': '强沙尘暴',
    '509': '浓雾',
    '510': '强浓雾',
    '511': '中度霾',
    '512': '重度霾',
    '513': '严重霾',
    '514': '大雾',
    '515': '特强浓雾',
    '900': '热',
    '901': '冷',
    '999': '未知',
  };
}
