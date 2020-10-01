import 'package:flutter/material.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';

/*
 * @author 小强
 *
 * @time 2020/10/1  12:45
 *
 * @desc 
 *
 */

class BottomNavigationBarList {
  static List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        title: Text("名片"),
        icon: Image.asset(CommonUtil.getImgPath("main_icon_business_card_normal"), height: 30),
        activeIcon: Image.asset(CommonUtil.getImgPath("main_icon_business_card_select"), height: 30)),
    BottomNavigationBarItem(
        title: Text("自营销"),
        icon: Image.asset(CommonUtil.getImgPath("main_icon_drainage_normal"), height: 30),
        activeIcon: Image.asset(CommonUtil.getImgPath("main_icon_drainage_select"), height: 30)),
    BottomNavigationBarItem(
        title: Text("雷达"),
        icon: Image.asset(CommonUtil.getImgPath("main_icon_service_normal"), height: 30),
        activeIcon: Image.asset(CommonUtil.getImgPath("main_icon_service_select"), height: 30)),
    BottomNavigationBarItem(
        title: Text("我的"),
        icon: Image.asset(CommonUtil.getImgPath("main_icon_my_normal"), height: 30),
        activeIcon: Image.asset(CommonUtil.getImgPath("main_icon_my_select"), height: 30)),
  ];
}
