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
            Positioned( // currently selected
              bottom: 755,
              left: 80,
              right: 210,
              top: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/return_salita');
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF908C8A),
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
            ),
            const Positioned(
              left: 111,
              top: 18,
              child: Text(
                'Words',
                style: TextStyle(
                    fontFamily: 'MergeOne',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    color: Colors.white
                ),
              ),
            ),
            Positioned(
              bottom: 760,
              left: 210,
              right: 80,
              top: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/return_phrases');
                },
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
            ),
            Positioned(
              left: 237,
              top: 18,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/return_phrases');
                },
                child: const Text(
                  'Phrases',
                  style: TextStyle(
                      fontFamily: 'MergeOne',
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.0,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 610,
              left: 20,
              right: 20,
              top: 60,
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
              top: 60,
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
              top: 130,
              child: Text(
                'Let\'s learn how to construct words',
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
              top: 150,
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

class LearnSalitaPhrases extends StatelessWidget {
  const LearnSalitaPhrases({super.key});

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
              bottom: 760,
              left: 80,
              right: 210,
              top: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/return_salita');
                },
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
            ),
            Positioned(
              left: 111,
              top: 18,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/return_salita');
                },
                child: const Text(
                  'Words',
                  style: TextStyle(
                      fontFamily: 'MergeOne',
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.0,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Positioned( // currently selected
              bottom: 755,
              left: 210,
              right: 80,
              top: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/return_phrases');
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF908C8A),
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
            ),
            Positioned(
              left: 237,
              top: 18,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/return_phrases');
                },
                child: const Text(
                  'Phrases',
                  style: TextStyle(
                      fontFamily: 'MergeOne',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 610,
              left: 20,
              right: 20,
              top: 60,
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
              top: 60,
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
              top: 130,
              child: Text(
                'Let\'s learn how to construct phrases',
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
              top: 150,
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
