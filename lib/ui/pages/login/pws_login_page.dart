import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demno/app/sp_key.dart';
import 'package:flutter_app_demno/service/login_request.dart';
import 'package:flutter_app_demno/utlis/common_colors.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';
import 'package:flutter_app_demno/utlis/sp_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PwsLoginPage extends StatefulWidget {
  @override
  _PwsLoginPageState createState() => _PwsLoginPageState();
}

class _PwsLoginPageState extends State<PwsLoginPage> {
  TextEditingController _editPhoneController = TextEditingController();
  TextEditingController _editPwsController = TextEditingController();

  bool _isPhoneEmpty = true;
  bool _isPwsEmpty = true;

  //是否隐藏密码
  bool _isObscureText = true;

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
              _buildPhone(),
              Container(
                color: CommonColors.COLOR_999999,
                height: 1,
                margin: EdgeInsets.only(right: 34),
              ),
              SizedBox(
                height: 24,
              ),
              _buildPws(),
              Container(
                color: CommonColors.COLOR_999999,
                height: 1,
                margin: EdgeInsets.only(right: 34),
              ),
              _buildRetrievePassword(),
              _buildLogin()
            ],
          ),
        ),
      ),
    );
  }

  //手机号
  Widget _buildPhone() {
    return Padding(
      padding: const EdgeInsets.only(right: 80),
      child: TextField(
        keyboardType: TextInputType.phone,
        controller: _editPhoneController,
        decoration: InputDecoration(
            hintText: "请输入手机号或邮箱", hintStyle: TextStyle(color: CommonColors.COLOR_CBCBCB), border: InputBorder.none),
      ),
    );
  }

  _buildPws2() {
    return TextFormField(
      maxLines: 1,
      validator: (value) => value.isEmpty ? "密码不能为空" : "",
      decoration: InputDecoration(
          hintText: "请输入密码", hintStyle: TextStyle(color: CommonColors.COLOR_CBCBCB), border: InputBorder.none),
    );
  }

  //密码
  Widget _buildPws() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: TextField(
            obscureText: _isObscureText,
            controller: _editPwsController,
            maxLines: 1,
            decoration: InputDecoration(
                hintText: "请输入密码", hintStyle: TextStyle(color: CommonColors.COLOR_CBCBCB), border: InputBorder.none),
          ),
        ),
        Positioned(
          right: 34,
          top: 22,
          child: InkWell(
            onTap: () {
              setState(() {
                _isObscureText = !_isObscureText;
              });
            },
            child: Image.asset(
              _isObscureText
                  ? CommonUtil.getImgPath("see", format: "png")
                  : CommonUtil.getImgPath("nosee", format: "png"),
              width: 19,
              height: 13,
            ),
          ),
        )
      ],
    );
  }

  //忘了密码？找回密码
  Widget _buildRetrievePassword() {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.only(right: 34, top: 12, bottom: 41),
      child: Text(
        "忘了密码？找回密码",
        style: TextStyle(fontSize: 12, color: CommonColors.COLOR_999999),
      ),
    );
  }

  //登录按钮
  Widget _buildLogin() {
    return Container(
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

          // if(_editPhoneController.text.isEmpty) {
          //
          //   CommonUtil.showToast("手机号不能为空");
          //   return;
          //
          // }
          // if(!CommonUtil.isChinaPhoneLegal(_editPhoneController.text)) {
          //   CommonUtil.showToast("手机号格式不正取");
          //   return;
          //
          // }
          //
          // if(_editPwsController.text.isEmpty) {
          //
          //   CommonUtil.showToast("密碼不能为空");
          //   return;
          //
          // }


          Map<String, dynamic> map = new Map();

          // map["username"] = _editPhoneController.text;
          // map["password"] = _editPwsController.text;
          // map["clientType"] = "MOBILE";

          map["username"] = "18822223335";
          map["password"] = "key023158";
          map["clientType"] = "MOBILE";

          LoginRequest.login(map).then((result) {

            CommonUtil.showToast("登录成功");

            getAsyncData();

          });



        },
      ),
    );
  }

  getAsyncData() async {
    // 获取实例
    var prefs = await SharedPreferences.getInstance();
    // 设置存储数据
    await prefs.setBool(SpKey.IS_LOGIN, true);
  }
}
