import 'package:aj_flutter_music/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:aj_flutter_music/pages/home.dart';
import 'package:aj_flutter_music/theme.dart';

void main() {
  runApp(AJMusic());
}

class AJMusic extends StatelessWidget {
  const AJMusic({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AJ music',
      theme: ThemeData(
        primarySwatch: primary,
      ),
      // home: const SampleAppPage(),
      // home: const MyFadeTest(title: "Fade demo"),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/login": (context) => const Login()
      },
    );
  }
}

class SampleAppPage extends StatefulWidget {
  const SampleAppPage({Key? key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  // Default value for toggle.
  bool toggle = true;

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  Widget _getToggleChild() {
    if (toggle) {
      return const Text('Toggle One');
    } else {
      return ElevatedButton(
        onPressed: () {},
        child: const Text('Toggle Two'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample App'),
      ),
      body: Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        /// _toggle,
        tooltip: 'Update Text',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class MyFadeTest extends StatefulWidget {
  final String title;

  const MyFadeTest({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyFadeTest();
}

class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
  late AnimationController controller;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FadeTransition(
          opacity: curve,
          child: const FlutterLogo(
            size: 100.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Fade',
        onPressed: () => controller.forward(),
        child: const Icon(Icons.brush),
      ),
    );
  }
}
