import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

   static void setScreenUtil(BuildContext context, {num width=750, num height = 1334, bool allowFontScaling = true}) {
      ScreenUtil.init(context, width: width, height: height,allowFontScaling:allowFontScaling);
   }
}
