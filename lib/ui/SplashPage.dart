import 'package:flutter/material.dart';

import '../main.dart';

//皮卡丘首頁
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final delaySecond = 3;

  @override
  void initState() {
    super.initState();
    // 延遲 2 秒後跳轉到主頁面
    Future.delayed(Duration(seconds: delaySecond), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('歡迎使用 TOEIC App', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Image.asset('assets/images/splash_logo.png', width: 150),
          ],
        ),
      ),
    );
  }
}
