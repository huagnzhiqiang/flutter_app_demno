import 'package:flutter/material.dart';
import 'package:flutter_app_demno/utlis/common_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

/*
 * @author 小强
 *
 * @time 2020/9/23  9:28
 *
 * @desc  工具类
 *
 */

class CommonUtil {
  /*
    * 获取本地文件
    */
  static String getImgPath(String pathName, {String format: "webp"}) => 'assets/images/$pathName.$format';

  static void setScreenUtil(BuildContext context, {num width = 750, num height = 1334, bool allowFontScaling = true}) {
    ScreenUtil.init(context, width: width, height: height, allowFontScaling: allowFontScaling);
  }

  /*
    * toast
    */
  static void showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: CommonColors.COLOR_999999,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  /*
    * 手机号验证
    */
  static bool isChinaPhoneLegal(String str) {
    return RegExp(r"^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$").hasMatch(str);
  }
}
