import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demno/utlis/common_colors.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
 * 名片投币页面
 */
class BusinessCardHeadPage extends StatefulWidget {
  @override
  _BusinessCardHeadPageState createState() => _BusinessCardHeadPageState();
}

class _BusinessCardHeadPageState extends State<BusinessCardHeadPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          buildBg(),
          buildBg2(),
          buildLogo(),
          buildDeclaration(),
          buildEdit(),
          buildInfo(),
        ],
      ),
    );
  }

  //编辑名片
  Widget buildEdit() {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.white38,
      margin: EdgeInsets.only(top: 275.h, left: 14.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "编辑名片",
            style: TextStyle(fontSize: 24.sp, color: Colors.white),
          )
        ],
      ),
    );
  }

  //背景
  Widget buildBg() {
    return Image.asset(
      CommonUtil.getImgPath("business_card_icon_default_bg"),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }

  //背景
  Widget buildBg2() {
    return Positioned(
      bottom: 20,
      right: 0,
      left: 50,
      child: Container(
        child: Image.asset(
          CommonUtil.getImgPath("business_card_icon_default_people"),
          height: 903.h,
        ),
      ),
    );
  }

  //logo
  Widget buildDeclaration() {
    return Container(
      margin: EdgeInsets.only(top: 215.h),
      alignment: Alignment.topCenter,
      child: Text(
        "秀自己，拓商机",
        style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold, color: CommonColors.COLOR_333333),
      ),
    );
  }

  //logo
  Widget buildLogo() {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 145.h),
      child: Image.asset(
        CommonUtil.getImgPath("icon_itop2", format: "png"),
        height: 55.h,
      ),
    );
  }

  //企业/个人信息
  buildInfo() {
    return Positioned(
      bottom: 156.h,
      right: 0,
      left: 0,
      child: Container(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              buildName(),
              buildPosition(),
              buildPersonalDeclaration(),
              buildEnterpriseName(),
              buildAddress(),
              buildPhone(),
            ],
          )),
    );
  }

  //名字
  buildName() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Text(
        "名字",
        style: TextStyle(fontSize: 60.sp, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  //职位
  buildPosition() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Text(
        "一级首席官 品牌营销总监",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(fontSize: 32.sp, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  //个人宣言
  buildPersonalDeclaration() {
    return Container(
      padding: EdgeInsets.only(left: 145.w, right: 145.w),
      alignment: Alignment.bottomCenter,
      child: Text(
        "举头三尺有神明，人生在世， 但求一个问心无愧。",
        textAlign: TextAlign.center,
        maxLines: 2,
        style: TextStyle(fontSize: 35.sp, color: Colors.white),
      ),
    );
  }

  //企业名称
  buildEnterpriseName() {
    return Container(
      padding: EdgeInsets.only(top: 50.h),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "广东智合创享有限公司",
            style: TextStyle(fontSize: 32.sp, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 15.w,
          ),
          Icon(Icons.child_care)
        ],
      ),
    );
  }

  //地址
  buildAddress() {
    return Container(
      padding: EdgeInsets.only(top: 30.h, left: 145.w, right: 145.w),
      alignment: Alignment.center,
      child: Text(
        "广州市 天河区 中石化大厦B塔 天河区191号中石化大厦B塔2011-2013室",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24.sp, color: Colors.white),
      ),
    );
  }

  //电话号码
  buildPhone() {
    return Container(
      padding: EdgeInsets.only(left: 145.w, right: 145.w),
      alignment: Alignment.center,
      child: Text(
        "电话：020-87457458",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24.sp, color: Colors.white),
      ),
    ); //
  }
}
