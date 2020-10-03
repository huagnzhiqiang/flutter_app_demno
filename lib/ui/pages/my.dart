import 'package:flutter/material.dart';
import 'package:flutter_app_demno/app/sp_key.dart';
import 'package:flutter_app_demno/ui/pages/new_user_progress_widget.dart';
import 'package:flutter_app_demno/utlis/common_colors.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';
import 'package:flutter_app_demno/utlis/sp_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'fly_rec_flat_button.dart';
import 'login/login_page.dart';
/*
 * @author 小强
 *
 * @time 2020/9/23  20:56
 *
 * @desc 我的页面
 *
 */

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

//首页视图
class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfafafa),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            _buildTitle(),
            BusinessCard(),
            BusinessCardList(),
            BusinessCardItem(),
            BusinessCardListItemTitle(),
            OfficialAccount(),
          ],
        ),
      ),
    );
  }

  //标题
  Widget _buildTitle() {
    return Container(
      color: Color(0xff00b2ff),
      padding: EdgeInsets.only(top: 50, bottom: 20, left: 18.0, right: 18),
      child: Row(
        children: <Widget>[
          Image.asset(
            CommonUtil.getImgPath("icon_xiaoxi", format: "png"),
            width: 44.w,
            height: 44.h,
          ),
          Expanded(
            child: Center(
              child: Text(
                "个人中心",
                style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Image.asset(
            CommonUtil.getImgPath("icon_setting", format: "png"),
            width: 44.w,
            height: 44.h,
          ),
        ],
      ),
    );
  }
}

class OfficialAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18.h, bottom: 18.h),
      color: Colors.white,
      child: Offstage(
        offstage: false,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Image.asset(
                CommonUtil.getImgPath("icon_close", format: "png"),
                width: 22.w,
                height: 22.h,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Image.asset(
                    CommonUtil.getImgPath("icon_itop", format: "png"),
                    width: 162.w,
                    height: 32.h,
                  )),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "关注iTOP智能名片公众号",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 28.sp, color: Color(0xff333333), fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "访客通知，升级更新早知道！",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 24.sp, color: Color(0xff999999), fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 43.w),
                child: FlyRecFlatButton(
                  "马上关注",
                  width: 100.w,
                  top: 15.h,
                  bottom: 15.h,
                  onTap: () {
                    print("马上关注");
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BusinessCardListItemTitle extends StatelessWidget {
  Widget _itemList(title, {subTitle = ""}) {
    return InkWell(
      onTap: () {
        print(title);
      },
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Color(0xff3333333), fontSize: 14),
                  ),
                  Spacer(),
                  Text(
                    subTitle,
                    style: TextStyle(color: subTitle == "未认证" ? Color(0xff4FAFF8) : Color(0xff3333333), fontSize: 14),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 28.h),
                    child: Image.asset(
                      CommonUtil.getImgPath("icon_right", format: "png"),
                      width: 6,
                      height: 10,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: subTitle == "意见反馈" ? Colors.white : Colors.black12,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        _itemList("分销中心"),
        _itemList("我的订单"),
        _itemList("认证资料", subTitle: "未认证"),
        _itemList("个人网盘", subTitle: "还剩0M"),
        _itemList("我的企业"),
        _itemList("成为代理商"),
        _itemList("关于iTOP智能名片"),
        _itemList("客服电话", subTitle: "020-3886886"),
        _itemList("意见反馈"),
      ],
    ));
  }
}

class BusinessCardItem extends StatelessWidget {
  Widget _gridViewItem(String path, title) {
    return Container(
      child: InkWell(
        onTap: () {
          print(title);
        },
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 4.0),
              padding: EdgeInsets.all(20.0.w),
              width: 80.w,
              height: 80.w,
              decoration: BoxDecoration(
                color: Color(0xff00b2ff),
                borderRadius: BorderRadius.circular(100),
              ),
              child: new Image.asset(
                path,
              ),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 12, color: Color(0xff333333)),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
      ),
      children: [
        _gridViewItem(CommonUtil.getImgPath("icon_ji_fen", format: "png"), "积分"),
        _gridViewItem(CommonUtil.getImgPath("icon_hong_bao", format: "png"), "红包"),
        _gridViewItem(CommonUtil.getImgPath("icon_you_hui_quan", format: "png"), "优惠券"),
        _gridViewItem(CommonUtil.getImgPath("icon_jin_qian", format: "png"), "i币"),
      ],
    );
  }
}

//邀请滑动
class BusinessCardList extends StatelessWidget {
  //每一个
  Widget _businessCardList(String title, String subTitle, String openTip) {
    return Container(
      width: 300.w,
      margin: EdgeInsets.only(left: 13.0.w),
      padding: EdgeInsets.only(left: 24.0.w, top: 20.h),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Text(
            title,
            style: TextStyle(color: Color(0xff333333), fontSize: 30.sp, fontWeight: FontWeight.bold),
          ),
          new Text(
            subTitle,
            style: TextStyle(
              color: Color(0xff333333),
              fontSize: 24.sp,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20.w, top: 10.h),
            // child: RawChip(
            //   padding: EdgeInsets.only(top: 5,bottom: 5),
            //   label: Text(
            //     openTip,
            //     style: TextStyle(color: Colors.white, fontSize: 12),
            //   ),
            //   backgroundColor: Colors.blue,
            // ),
            child: FlyRecFlatButton(
              openTip,
              radius: 50,
              width: 100.w,
              top: 0,
              bottom: 0,
              onTap: () {
                print(openTip);
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(left: 54.0.w, right: 54.0.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _businessCardList("领VIP", "新人专享7天体验", "去领取"),
              _businessCardList("邀请有礼", "开会员升等级", "去开通"),
              _businessCardList("领VIP", "新人专享7天体验", "去领取"),
            ],
          ),
        ),
      ),
    );
  }
}

//名片头
class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 750.w,
      child: new Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            color: Color(0xff00b2ff),
            width: 750.w,
            height: 171.h,
          ),
          _buildContainer(context)
        ],
      ),
    );
  }

  _buildContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 45.h, left: 54.w, right: 54.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //头像
                Container(
                  padding: EdgeInsets.only(top: 45.0.h, left: 26.0.w),
                  child: Image.asset(
                    CommonUtil.getImgPath("common_icon_default_avatar"),
                    width: 100.w,
                    height: 100.h,
                  ),
                ),

                //名片 职位
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 45.0.h, left: 26.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //姓名
                            Container(
                              constraints: BoxConstraints(maxWidth: 100.w),
                              child: new Text(
                                "姓名",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 34.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ),
                            // |
                            new Container(
                              width: 3.0.w,
                              height: 22.0.h,
                              color: Color(0xff666666),
                              margin: EdgeInsets.only(left: 28.0.w, right: 28.0.w),
                            ),
                            //职位
                            Expanded(
                              child: new Text(
                                "职位",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 34.sp, color: Color(0xff7a7a7a)),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25.0.w),
                          child: new Text(
                            "广东敲代码小强无限公司",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 28.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //开通vip
                Container(
                  alignment: Alignment.topRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(40.w, 12.h, 16.w, 12.h),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15))),
                        child: Text(
                          "默认名片",
                          style: TextStyle(color: Colors.white, fontSize: 24.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 24.0.w, top: 40.h),
                        child: new RaisedButton(
                          color: Color(0xffFF9600),
                          onPressed: () async {
                            // 获取实例
                            var prefs = await SharedPreferences.getInstance();
                            // 设置存储数据
                            var bool = prefs.getBool(SpKey.IS_LOGIN) ?? false;

                            print(bool);

                            if (!bool) {
                              CommonUtil.showToast("登录");
                            } else {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
                            }
                          },
                          child: Text(
                            "开通VIP",
                            style: TextStyle(color: Colors.white, fontSize: 24.sp),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.all(
                            Radius.circular(10),
                          )),
                        ),
                      ),
                    ],
                  ),
                  // child: new Card(
                  //   color: Color(0xffFF9600),
                  //   child: Padding(
                  //     padding:  EdgeInsets.fromLTRB(24.0.w, 17.0.h, 24.0.w, 17.0.h),
                  //     child: new Text("开通vip",style: TextStyle(
                  //         color: Colors.white
                  //     ),),
                  //   ),
                  // ),
                )
              ],
            ),
          ),

          //资料完善度
          Container(
            margin: EdgeInsets.only(left: 34.w, top: 50.h, bottom: 28.h),
            child: Row(
              children: [
                Text(
                  "资料完善度:0%",
                  style: TextStyle(fontSize: 24.sp, color: Color(0xff333333)),
                ),
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: NewUserProgressWidget(
                      10,
                      width: 224.w,
                      height: 10.h,
                    )),
                Spacer(),
                Container(
                    margin: EdgeInsets.only(right: 40.w),
                    child: Text("去完善>>",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 24.sp, color: CommonColors.COLOR_00B2FF))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
