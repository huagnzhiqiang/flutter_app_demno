import 'package:flutter/material.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        title: Padding(
          padding:  EdgeInsets.only(top: 5.h),
          child: Text("名片"),
        ),
        icon: Image.asset(CommonUtil.getImgPath("main_icon_business_card_normal"), height: 22,gaplessPlayback:true),
        activeIcon: Image.asset(CommonUtil.getImgPath("main_icon_business_card_select"), height: 22,gaplessPlayback:true)),
    BottomNavigationBarItem(
        title: Padding(
          padding:  EdgeInsets.only(top: 5.h),
          child: Text("自营销"),
        ),
        icon: Image.asset(CommonUtil.getImgPath("main_icon_drainage_normal"), height: 22,gaplessPlayback:true),
        activeIcon: Image.asset(CommonUtil.getImgPath("main_icon_drainage_select"), height: 22,gaplessPlayback:true)),
    BottomNavigationBarItem(
        title: Padding(
          padding:  EdgeInsets.only(top: 5.h),
          child: Text("雷达"),
        ),
        icon: Image.asset(CommonUtil.getImgPath("main_icon_service_normal"), height: 22,gaplessPlayback:true),
        activeIcon: Image.asset(CommonUtil.getImgPath("main_icon_service_select"), height: 22,gaplessPlayback:true)),
    BottomNavigationBarItem(
        title: Padding(
          padding:  EdgeInsets.only(top: 5.h),
          child: Text("我的"),
        ),
        icon: Image.asset(CommonUtil.getImgPath("main_icon_my_normal"), height: 22,gaplessPlayback:true),
        activeIcon: Image.asset(CommonUtil.getImgPath("main_icon_my_select"), height: 22,gaplessPlayback:true)),
  ];
}
