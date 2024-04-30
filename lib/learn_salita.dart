import 'dart:math';

import 'package:flutter/material.dart';

class LearnSalita extends StatelessWidget {
  const LearnSalita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learn',
          style: TextStyle(
              fontFamily: 'SfProDisplay',
              fontSize: 30,
              fontWeight: FontWeight.normal,
              color: Colors.white
          ),
        ),
        backgroundColor: const Color(0xFF323232),
        leading: Image.asset(
          'images/baylingo_logo.png',
          width: 50,
          height: 50,
          fit: BoxFit.contain,
        ),
      ),
      backgroundColor: const Color(0xFFFFF2E6),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Opacity(
                opacity: 0.07, // Set opacity value (0.0 to 1.0)
                child: Transform.rotate(
                  angle: pi, // Specify the angle of rotation in radians
                  child: Image.asset(
                    'images/baybayin_background.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 733,
              right: 170,
              child: Container(
                width: 75,
                height: 75,
                decoration: const BoxDecoration(
                  color: Color(0xFF323232),
                  shape: BoxShape.circle, // Circle
                ),
              ),
            ),
            Positioned(
              left: 166.5,
              top: 730,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Image(
                  image: AssetImage('images/homeicon.png'),
                  width: 75,
                  height: 75,
                ),
              ),
            ),
            Positioned(
              bottom: 658,
              left: 20,
              right: 20,
              top: 25,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF323232),
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 8,
                      offset: const Offset(0,3),
                    )
                  ],// Set border radius
                ),
              ),
            ),
            const Positioned(
              left: 40,
              top: 25,
              child: Text(
                'Mabuhay!',
                style: TextStyle(
                    fontFamily: 'Microsoft',
                    fontSize: 40.0,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 5.0,
                    color: Colors.white
                ),
              ),
            ),
            const Positioned(
              left: 35,
              top: 95,
              child: Text(
                'Let\'s learn how to construct sentences',
                style: TextStyle(
                    fontFamily: 'MergeOne',
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.0,
                    color: Colors.white
                ),
              ),
            ),
            const Positioned(
              left: 35,
              top: 115,
              child: Text(
                'in baybayin.',
                style: TextStyle(
                    fontFamily: 'MergeOne',
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.0,
                    color: Colors.white
                ),
              ),
            ),
            Positioned(
              top: 758,
              left: 245,
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFF323232),
                  shape: BoxShape.circle, // Circle
                ),
              ),
            ),
            Positioned(
              left: 247.5,
              top: 760,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/about_us');
                },
                child: const Image(
                  image: AssetImage('images/about_us.png'),
                  width: 45,
                  height: 45,
                ),
              ),
            ),
            Positioned(
              top: 758,
              right: 248,
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFF323232),
                  shape: BoxShape.circle, // Circle
                ),
              ),
            ),
            Positioned(
              right: 250,
              top: 760,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/help');
                },
                child: const Image(
                  image: AssetImage('images/about_us.png'),
                  width: 45,
                  height: 45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
