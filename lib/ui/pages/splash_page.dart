import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demno/ui/pages/mian/xq_main_page.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';

/*
 * @author 小强
 *
 * @time 2020/9/23  9:01
 *
 * @desc 开屏页面
 *
 */

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  TimerUtil _timerUtil;

  int _status = 0;
  int _count = 3;

  @override
  void initState() {
    super.initState();
    _doCountDown();
  }

  /*
   * 倒计时
   */
  void _doCountDown() {
    // setState(() {
    //    _status = 1;
    // });
    _timerUtil = new TimerUtil(mTotalTime: 3 * 1000);
    _timerUtil.setOnTimerTickCallback((int tick) {
      double _tick = tick / 1000;
      setState(() {
        _count = _tick.toInt();
      });
      if (_tick == 0) {
        _goMain();
      }
    });
    _timerUtil.startCountDown();
  }

  void _goMain() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => XQMainPage()));
  }

  //闪屏页面
  Widget _buildSplashBg() {
    return new Image.asset(
      CommonUtil.getImgPath('main_icon_guide_2', format: "webp"),
      width: double.infinity,
      fit: BoxFit.fill,
      height: double.infinity,
    );
  }

  @override
  Widget build(BuildContext context) {
    CommonUtil.setScreenUtil(context);
    return Material(
      child: new Stack(
        children: <Widget>[
           Offstage(offstage:false, child: _buildSplashBg()),
          Offstage(
            offstage: false,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  _goMain();
                },
                child: Container(
                  child: Text("跳过 $_count",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Color(0x66000000),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    if (_timerUtil != null) _timerUtil.cancel(); //记得在dispose里面把timer cancel。
    _status = 0;
    super.dispose();
  }
}
