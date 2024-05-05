import 'dart:math';

import 'package:flutter/material.dart';

class LearnSalita extends StatefulWidget {
  const LearnSalita({super.key});

  @override
  _LearnSalitaState createState() => _LearnSalitaState();
}

class _LearnSalitaState extends State<LearnSalita> {
  bool _isExpanded = false;
  Color _containerColor = const Color(0xFF323232);
  bool _isExpandedTwo = false;
  Color _containerColorTwo = const Color(0xFF323232);

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
                opacity: 0.07,
                child: Transform.rotate(
                  angle: pi,
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
                  shape: BoxShape.circle,
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
                  image: AssetImage('images/info_white.png'),
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
            const Positioned(
              left: 140,
              top: 235,
              child: Text(
                'PAGBATI',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Colors.black,
                  shadows: [Shadow(
                    color: Colors.black, // Set the color of the stroke
                    blurRadius: 1, // Set the thickness of the stroke
                  )],
                ),
              ),
            ),
            const Positioned(
              left: 138.5,
              top: 275,
              child: Text(
                '(GREETINGS)',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: _isExpanded ? 0 : 320,
              bottom: _isExpanded ? 0 : 350,
              left: _isExpanded ? 0 : 20,
              right: _isExpanded ? 0 : 20,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                    _containerColor = _isExpanded
                        ? const Color(0xFF908C8A)
                        : const Color(0xFF323232);
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.fastEaseInToSlowEaseOut,
                  width: _isExpanded
                      ? MediaQuery.of(context).size.width * 0.5
                      : 70, // Adjust the width to 80% of the screen width when expanded
                  height: _isExpanded
                      ? MediaQuery.of(context).size.height * 0.4
                      : 70, // Adjust the height to 60% of the screen height when expanded
                  decoration: BoxDecoration(
                    color: _containerColor,
                    borderRadius: BorderRadius.circular(
                        _isExpanded ? 20 : 26), // Adjust the border radius when expanded
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: _isExpanded ? 20 : 0,
              right: _isExpanded ? 20 : 0,
              top: _isExpanded ? 100 : 100,
              bottom: _isExpanded ? 810 : 210,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                    _containerColor = _isExpanded
                        ? const Color(0xFF908C8A)
                        : const Color(0xFF323232);
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastEaseInToSlowEaseOut,
                  width: 100, // fixed width
                  height: 100, // fixed height
                  alignment: Alignment.center, // center the image
                  child: const Image(
                    image: AssetImage('assets/kumusta.png'),
                    fit: BoxFit.contain, // scale the image to fit the container
                  ),
                ),
              ),
            ),
            if (_isExpanded) // Conditionally show the image when expanded
              Positioned(
                left: 0,
                right: 0,
                bottom: 580,
                child: Image.asset(
                  'assets/kumusta.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                ),
              ),
            Positioned(
              left: _isExpanded? 115 : 115,
              top: _isExpanded? 60 : 385,
              child: const AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 500),
                curve: Curves.fastEaseInToSlowEaseOut,
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Colors.white,
                ),
                child: Text('KU'),
              ),
            ),
            Positioned(
              left: _isExpanded? 165 : 165,
              top: _isExpanded? 60 : 385,
              child: const AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 500),
                curve: Curves.fastEaseInToSlowEaseOut,
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Colors.white,
                ),
                child: Text('MU'),
              ),
            ),
            Positioned(
              left: _isExpanded? 230 : 230,
              top: _isExpanded? 60 : 385,
              child: const AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 500),
                curve: Curves.fastEaseInToSlowEaseOut,
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Colors.white,
                ),
                child: Text('S'),
              ),
            ),
            Positioned(
              left: _isExpanded? 270 : 270,
              top: _isExpanded? 60 : 385,
              child: const AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 500),
                curve: Curves.fastEaseInToSlowEaseOut,
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Colors.white,
                ),
                child: Text('TA'),
              ),
            ),
            Positioned(
              left: _isExpanded? 135 : 135,
              top: _isExpanded? 85 : 420,
              child: const AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 500),
                curve: Curves.fastEaseInToSlowEaseOut,
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.0,
                  color: Colors.white,
                ),
                child: Text('(How are you?)'),
              ),
            ),
            Positioned(
              left: _isExpanded? 135 : 135,
              top: _isExpanded? 85 : 420,
              child: const AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 500),
                curve: Curves.fastEaseInToSlowEaseOut,
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.0,
                  color: Colors.white,
                ),
                child: Text('(How are you?)'),
              ),
            ),
            Positioned(
              top: _isExpandedTwo ? 0 : 480,
              bottom: _isExpandedTwo ? 0 : 170,
              left: _isExpandedTwo ? 0 : 20,
              right: _isExpandedTwo ? 0 : 20,
              child: Visibility(
                visible: !_isExpanded, // Make it invisible when the first shape is expanded
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpandedTwo = !_isExpandedTwo;
                      _containerColorTwo = _isExpandedTwo
                          ? const Color(0xFF908C8A)
                          : const Color(0xFF323232);
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.fastEaseInToSlowEaseOut,
                    width: _isExpandedTwo
                        ? MediaQuery.of(context).size.width * 0.5
                        : 70, // Adjust the width to 80% of the screen width when expanded
                    height: _isExpandedTwo
                        ? MediaQuery.of(context).size.height * 0.4
                        : 70, // Adjust the height to 60% of the screen height when expanded
                    decoration: BoxDecoration(
                      color: _containerColorTwo,
                      borderRadius: BorderRadius.circular(
                          _isExpandedTwo ? 20 : 26), // Adjust the border radius when expanded
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: _isExpandedTwo ? 20 : 0,
              right: _isExpandedTwo ? 20 : 0,
              top: _isExpandedTwo ? 100 : 260,

              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpandedTwo = !_isExpandedTwo;
                    _containerColorTwo = _isExpandedTwo
                        ? const Color(0xFF908C8A)
                        : const Color(0xFF323232);
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastEaseInToSlowEaseOut,
                  width: 500, // fixed width
                  height: 500, // fixed height
                  alignment: Alignment.center, // center the image
                  child: const Image(
                    image: AssetImage('assets/salamat.png'),
                    fit: BoxFit.contain, // scale the image to fit the container
                  ),
                ),
              ),
            ),
            if (_isExpandedTwo) // Conditionally show the image when expanded
              Positioned(
                left: 0,
                right: 0,
                bottom: 580,
                child: Image.asset(
                  'assets/salamat.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// PHRASES
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
