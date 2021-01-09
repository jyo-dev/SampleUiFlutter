import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riafytest/Utilities/styles.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 4.0,
      width: isActive ? 30.0 : 24.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.black26,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.4, 0.7, 0.9],
                colors: [
                  Color(0xFFFDF5E6),
                  Color(0xFFFFFAF0),
                  Color(0xFFFFFFF0),
                  Color(0xFFFFFFFF),
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                /*Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => print('Skip'),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),*/
                SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height - 45,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Stack(
                          children: [
                            Positioned(
                              top:80,
                              left: 0,
                              child: Row(
                                children: _buildPageIndicator(),
                              ),
                            ),
                            Positioned(
                              top: 105,
                              left: 10,
                              child: Row(
                                children: [
                                  Text(
                                    'Modular ',
                                    style: kTitleStyle,
                                  ),
                                  Text(
                                    'Planters',
                                    style: kSubtitleStyleHome,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 145.0,
                              left: 10.0,
                              child: Container(
                                child: Text(
                                  'Designed to form artrificial \nenviroment of any plant .',
                                  style: kSubtitleStyle,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 90,
                              right: 25,
                              child: Container(
                                height: 150.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/pot2.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 195,
                              child: Container(
                                height: 220.0,
                                width: 180.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/feather1.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 285,
                              right: 15,
                              child: Container(
                                height: 250.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/aloevera.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                height: 140,
                                width: 120,
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(
                                        context, '/second');
                                  },
                                  child: ClayContainer(
                                    color: Colors.white,
                                    height: 80,
                                    width: 60,
                                    borderRadius: 50,
                                    curveType: CurveType.concave,
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Stack(
                          children: [
                            Positioned(
                              top:80,
                              left: 0,
                              child: Row(
                                children: _buildPageIndicator(),
                              ),
                            ),
                            Positioned(
                              top: 105,
                              left: 10,
                              child: Row(
                                children: [
                                  Text(
                                    'Modular ',
                                    style: kTitleStyle,
                                  ),
                                  Text(
                                    'Planters',
                                    style: kSubtitleStyleHome,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 145.0,
                              left: 10.0,
                              child: Container(
                                child: Text(
                                  'Designed to form artrificial \nenviroment of any plant .',
                                  style: kSubtitleStyle,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 90,
                              right: 25,
                              child: Container(
                                height: 150.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/pot2.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 195,
                              child: Container(
                                height: 220.0,
                                width: 180.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/feather1.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 285,
                              right: 15,
                              child: Container(
                                height: 250.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/aloevera.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                height: 140,
                                width: 120,
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(
                                        context, '/second');
                                  },
                                  child: ClayContainer(
                                    color: Colors.white,
                                    height: 80,
                                    width: 60,
                                    borderRadius: 50,
                                    curveType: CurveType.concave,
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Positioned(
                              top:80,
                              left: 0,
                              child: Row(
                                children: _buildPageIndicator(),
                              ),
                            ),
                            Positioned(
                              top: 105,
                              left: 10,
                              child: Row(
                                children: [
                                  Text(
                                    'Modular ',
                                    style: kTitleStyle,
                                  ),
                                  Text(
                                    'Planters',
                                    style: kSubtitleStyleHome,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 145.0,
                              left: 10.0,
                              child: Container(
                                child: Text(
                                  'Designed to form artrificial \nenviroment of any plant .',
                                  style: kSubtitleStyle,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 90,
                              right: 25,
                              child: Container(
                                height: 150.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/pot2.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 195,
                              child: Container(
                                height: 220.0,
                                width: 180.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/feather1.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 285,
                              right: 15,
                              child: Container(
                                height: 250.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/aloevera.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                height: 140,
                                width: 120,
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(
                                        context, '/second');
                                  },
                                  child: ClayContainer(
                                    color: Colors.white,
                                    height: 80,
                                    width: 60,
                                    borderRadius: 50,
                                    curveType: CurveType.concave,
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: SizedBox(height: 0,)
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
        bottomSheet: _currentPage == _numPages - 1
            ?Visibility(
            visible: false,
            child: SizedBox(height: 0,))
            : Text(''),
      ),
    );
  }
}
