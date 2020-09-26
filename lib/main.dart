import 'package:base_library/base_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demno/ui/pages/business_card_page.dart';
import 'package:flutter_app_demno/ui/pages/icon_tab.dart';
import 'package:flutter_app_demno/ui/pages/my.dart';
import 'package:flutter_app_demno/ui/pages/splash_page.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        BaseConstant.routeMain: (ctx) => MainPage(title: "小强APP"),
      },
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue,
        accentColor: Colors.blue,
        indicatorColor: Colors.white,
      ),
      home: SplashPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  final int _index_0 = 0;
  final int _index_1 = 1;
  final int _index_2 = 2;
  final int _index_3 = 3;

  var _currentIndex = 0;

  TabController _tabController;

  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(initialIndex: _currentIndex, length: 4, vsync: this);

    listener = () {
      setState(() {
        _currentIndex = _tabController.index;
      });
    };
    _tabController.addListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          BusinessCardPage(),
          BusinessCardPage(),
          BusinessCardPage(),
          MyPage(),
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: new TabBar(controller: _tabController, tabs: [
        IconTab(
            path: _currentIndex == _index_0 ? "main_icon_business_card_select" : "main_icon_business_card_normal",
            data: "名片",
            color: _currentIndex == _index_0 ? Colors.blue : Colors.grey),
        IconTab(
            path: _currentIndex == _index_1 ? "main_icon_drainage_select" : "main_icon_drainage_normal",
            data: "自营销",
            color: _currentIndex == _index_1 ? Colors.blue : Colors.grey),
        IconTab(
            path: _currentIndex == _index_2 ? "main_icon_service_select" : "main_icon_service_normal",
            data: "雷达",
            color: _currentIndex == _index_2 ? Colors.blue : Colors.grey),
        IconTab(
            path: _currentIndex == _index_3 ? "main_icon_my_select" : "main_icon_my_normal",
            data: "我的",
            color: _currentIndex == _index_3 ? Colors.blue : Colors.grey),
      ]),
    );
  }
}
