import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';

/*
 * @author 小强
 *
 * @time 2020/9/23  13:54
 *
 * @desc 底部导航栏
 *
 */

class BottomNavigationBarPage extends StatefulWidget {
   @override
   State<StatefulWidget> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
   var _currentIndex = 0;

   setCurrent(int index) {
      setState(() {
         _currentIndex = index;
      });
   }

   @override
   Widget build(BuildContext context) {
      return BottomNavigationBar(
         currentIndex: _currentIndex,
         onTap: setCurrent,
         //图标显示颜色
         fixedColor: Colors.blue,
         items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(CommonUtil.getImgPath('main_icon_business_card_select', format: "webp"))),
                title: Text("名片")),
            BottomNavigationBarItem(icon: Icon(Icons.explicit), title: Text("自营销")),
            BottomNavigationBarItem(icon: Icon(Icons.explicit), title: Text("雷达")),
            BottomNavigationBarItem(icon: Icon(Icons.explicit), title: Text("我的")),
         ],
      );
   }
}

class bottom_navigation_bar_page {
}