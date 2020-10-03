import 'package:flutter/material.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';

import '../businessCard/business_card_page.dart';
import '../my.dart';
import 'bottom_navigation_bar_list.dart';

/*
 * @author 小强
 *
 * @time 2020/10/1  10:39
 *
 * @desc 
 *
 */

class XQMainPage extends StatefulWidget {
  @override
  _XQMainPageState createState() => _XQMainPageState();
}

class _XQMainPageState extends State<XQMainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: [
            BusinessCardPage(),
            BusinessCardPage(),
            BusinessCardPage(),
            MyPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 14,
            unselectedFontSize: 14,
            items: BottomNavigationBarList.items,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }));
  }
}
