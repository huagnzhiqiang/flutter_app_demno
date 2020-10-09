import 'package:flutter/material.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'business_card_head_page.dart';

/*
 * @author 小强
 *
 * @time 2020/9/23  20:44
 *
 * @desc 名片页面
 *
 */

class BusinessCardPage extends StatefulWidget {
  @override
  _BusinessCardPageState createState() => _BusinessCardPageState();
}

class _BusinessCardPageState extends State<BusinessCardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: UpPageViewPageState(),
    );
  }
}

class UpPageViewPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PageView(
      scrollDirection: Axis.vertical,
      children: [
        BusinessCardHeadPage(),
        Image.asset(CommonUtil.getImgPath("main_icon_guide_2")),
      ],
    ));
  }
}
