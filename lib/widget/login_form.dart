import 'dart:ui';

import 'package:aj_flutter_music/theme.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginFromState();
}

class _LoginFromState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 42, left: 35, right: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "欢迎来到阿囧音乐",
            style: TextStyle(
                fontSize: 14,
                letterSpacing: 0,
                color: Color(0xff7a869a),
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 35),
          const TextField(
            decoration: InputDecoration(
                label: Text("用户名/手机号"), border: OutlineInputBorder()),
          ),
          const SizedBox(height: 30),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                label: Text("密码"), border: OutlineInputBorder()),
          ),
          const SizedBox(height: 24),
          const Text(
            "忘记密码",
            style: TextStyle(fontSize: 13, color: primary),
          ),
          const SizedBox(height: 24),
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(onPressed: () {}, child: const Text("登录")),
          ),
          Flexible(
              flex: 1,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "没有账号?",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF7A869A),
                          letterSpacing: 0,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "立即注册",
                      style: TextStyle(
                          fontSize: 14,
                          color: primary,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
