import 'package:flutter/material.dart';
import 'package:flutter_app_demno/utlis/common_colors.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
 * @author 小强
 *
 * @time 2020/9/26  22:05
 *
 * @desc 登录页面
 *
 */

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _otherLogin() {
    return Container(
      margin: EdgeInsets.only(top: 54.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Column(
            children: [
              Image.asset(
                CommonUtil.getImgPath("icon_pwd_login", format: "png"),
                width: 58.w,
                height: 58.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.h, bottom: 50.h),
                child: Text(
                  "密码登录",
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: CommonColors.COLOR_999999,
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              Image.asset(
                CommonUtil.getImgPath("icon_wechat_login", format: "png"),
                width: 58.w,
                height: 58.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.h, bottom: 50.h),
                child: Text(
                  "微信登录",
                  style: TextStyle(fontSize: 24.sp, color: CommonColors.COLOR_999999),
                ),
              )
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(CommonUtil.getImgPath("icon_login_bg", format: "png")),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(top: 100.h, right: 54.w),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text(
                    "取消",
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: CommonColors.COLOR_999999,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 170.h),
                alignment: Alignment.center,
                child: Image.asset(
                  CommonUtil.getImgPath("icon_login_itop", format: "png"),
                  width: 300.w,
                  height: 93.h,
                ),
              ),
              Center(
                  child: Text(
                "i 片 在 手  拓 客 无 忧",
                style: TextStyle(fontSize: 39.sp, color: CommonColors.COLOR_58595B),
              )),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 239.h),
                  child: Text(
                    "使用本机号码",
                    style: TextStyle(fontSize: 28.sp, color: CommonColors.COLOR_333333),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 32.h, bottom: 32.h),
                  margin: EdgeInsets.only(
                    top: 32.h,
                    left: 175.w,
                    right: 175.w,
                  ),
                  decoration: BoxDecoration(
                    color: CommonColors.COLOR_00B2FF,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: InkWell(
                    child: Text(
                      "一键登录",
                      style: TextStyle(fontSize: 28.sp, color: Colors.white),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 24.h),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "登录即表明同意",
                      style: TextStyle(fontSize: 24.sp, color: CommonColors.COLOR_999999),
                    ),
                    Text(
                      "《用户协议》",
                      style: TextStyle(fontSize: 24.sp, color: CommonColors.COLOR_00B2FF),
                    ),
                    Text(
                      "和",
                      style: TextStyle(fontSize: 24.sp, color: CommonColors.COLOR_999999),
                    ),
                    Text(
                      "《隐私政策》",
                      style: TextStyle(fontSize: 24.sp, color: CommonColors.COLOR_00B2FF),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 177.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 250.w),
                      color: CommonColors.COLOR_CCCCCC,
                      height: 1.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 36.w, right: 36.w),
                      child: Text(
                        "OR",
                        style: TextStyle(fontSize: 23.sp, color: CommonColors.COLOR_333333),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: 250.w),
                      color: CommonColors.COLOR_CCCCCC,
                      height: 1.h,
                    )
                  ],
                ),
              ),
              _otherLogin()
            ],
          ),
        ),
      ),
    );
  }
}
