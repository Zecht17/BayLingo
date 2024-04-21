import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);


    Future.delayed(const Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const MyApp(),
      ));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors:[Color(0xFFFFF2E6), Color(0xFFFFF2E6), Color(0xFFFFF2E6)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image (
              image: AssetImage('images/baylingo_logo.png'),
            ),
            Image(image: AssetImage('images/splashtext_baybayin.png'),
              width: 120,
              height: 120,
            ),
            SizedBox(height: 1),
            Text('Bay-Lingo', style: TextStyle(
              fontFamily: 'Inder',
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontSize: 40,
            ),
            ),
          ],
        ),
      ),
    );
  }
}