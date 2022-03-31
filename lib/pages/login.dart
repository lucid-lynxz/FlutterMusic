import 'package:aj_flutter_music/widget/login_form.dart';
import 'package:flutter/material.dart';
import 'package:aj_flutter_music/theme.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primary,
        padding: const EdgeInsets.only(top: 60),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: Column(
            children: <Widget>[
              TabBar(
                labelColor: primary,
                unselectedLabelColor: const Color(0xFF7A869A),
                tabs: const [
                  Tab(text: "登录"),
                  Tab(
                    text: "注册",
                  )
                ],
                controller: _tabController,
              ),
              Flexible(
                flex: 1,
                child: TabBarView(
                    controller: _tabController,
                    children: const <Widget>[
                      LoginForm(),
                      Center(
                        child: Text("注册页面"),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
