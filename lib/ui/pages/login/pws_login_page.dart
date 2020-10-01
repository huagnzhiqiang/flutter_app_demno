import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demno/utlis/common_colors.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';

class PwsLoginPage extends StatefulWidget {
  @override
  _PwsLoginPageState createState() => _PwsLoginPageState();
}

class _PwsLoginPageState extends State<PwsLoginPage> {
  TextEditingController _editPhoneController = TextEditingController();
  TextEditingController _editPwsController = TextEditingController();

  bool _isPhoneEmpty = true;
  bool _isPwsEmpty = true;

  @override
  void initState() {
    super.initState();
    _editPhoneController.addListener(() {
      setState(() {
        if (_editPhoneController.text.isNotEmpty) {
          _isPhoneEmpty = false;
        } else {
          _isPhoneEmpty = true;
        }
      });
    });
    _editPwsController.addListener(() {
      setState(() {
        if (_editPwsController.text.isNotEmpty) {
          _isPwsEmpty = false;
        } else {
          _isPwsEmpty = true;
        }
      });
    });

    print(_isPhoneEmpty);
    print(_isPwsEmpty);
  }

  @override
  void setState(fn) {
    super.setState(fn);
    print(_isPhoneEmpty);
    print(_isPwsEmpty);
  }

  @override
  void dispose() {
    super.dispose();
    _editPhoneController.dispose();
    _editPwsController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "密码登录",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 17, color: CommonColors.COLOR_333333),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 22, left: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "密码登录",
                style: TextStyle(fontSize: 19, color: CommonColors.COLOR_333333),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: Text(
                  "登录即表明同意《用户协议》和《隐私政策》",
                  style: TextStyle(fontSize: 12, color: CommonColors.COLOR_999999),
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: _editPhoneController,
                  decoration: InputDecoration(
                      hintText: "请输入手机号或邮箱",
                      hintStyle: TextStyle(color: CommonColors.COLOR_CBCBCB),
                      border: InputBorder.none),
                ),
              ),
              Container(
                color: CommonColors.COLOR_999999,
                height: 1,
                margin: EdgeInsets.only(right: 34),
              ),
              SizedBox(
                height: 24,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: TextField(
                      controller: _editPwsController,
                      maxLines: 1,
                      decoration: InputDecoration(
                          hintText: "请输入密码",
                          hintStyle: TextStyle(color: CommonColors.COLOR_CBCBCB),
                          border: InputBorder.none),
                    ),
                  ),
                  Positioned(
                    right: 34,
                    top: 22,
                    child: Image.asset(
                      CommonUtil.getImgPath("nosee", format: "png"),
                      width: 19,
                      height: 13,
                    ),
                  )
                ],
              ),
              Container(
                color: CommonColors.COLOR_999999,
                height: 1,
                margin: EdgeInsets.only(right: 34),
              ),
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 34, top: 12, bottom: 41),
                child: Text(
                  "忘了密码？找回密码",
                  style: TextStyle(fontSize: 12, color: CommonColors.COLOR_999999),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 24, bottom: 24),
                child: RaisedButton(
                  color: _isPwsEmpty == true
                      ? CommonColors.COLOR_CCCCCC
                      : (_isPhoneEmpty == true ? CommonColors.COLOR_CCCCCC : CommonColors.COLOR_00B2FF),
                  padding: EdgeInsets.only(left: 55, right: 55),
                  child: Text(
                    "登录",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    if (_editPhoneController.text.isNotEmpty && _editPwsController.text.isNotEmpty) {

                    }
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
