import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intern/bag.dart';
import 'package:intern/profile.dart';
import 'dart:ui';
import 'Utils/SizeConfig.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intern Task',
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
      ),
      home: HomeInd(),
    );
  }
}

class HomeInd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeIndState();
  }
}

class _HomeIndState extends State<HomeInd> {
  List<Widget> _widgetOptionsInd = <Widget>[
    Container(
      alignment: Alignment.center,
      child: Text("My Home"),
    ),
    Bag(),
    Container(
      alignment: Alignment.center,
      child: Text("Liked"),
    ),
    Profile(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 360;
    var h = SizeConfig.screenHeight / 640;

    return Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            elevation: 10,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            unselectedItemColor: Color(0xff130f26),
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.symmetric(horizontal: b * 10),
                  height: h * 38,
                  width: b * 38,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _selectedIndex == 0
                        ? Color(0xff8D8D8D).withOpacity(0.5)
                        : Colors.transparent,
                  ),
                  child: SvgPicture.asset(
                    'images/Home.svg',
                    allowDrawingOutsideViewBox: true,
                    height: h * 17,
                    width: b * 18,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.symmetric(horizontal: b * 10),
                  height: h * 38,
                  width: b * 38,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _selectedIndex == 1
                        ? Color(0xff8D8D8D).withOpacity(0.5)
                        : Colors.transparent,
                  ),
                  child: SvgPicture.asset(
                    _selectedIndex == 1
                        ? 'images/bagBold.svg'
                        : 'images/Bag.svg',
                    allowDrawingOutsideViewBox: true,
                    height: h * 17,
                    color: Colors.white,
                    width: b * 18,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.symmetric(horizontal: b * 10),
                  height: h * 38,
                  width: b * 38,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _selectedIndex == 2
                        ? Color(0xff8D8D8D).withOpacity(0.5)
                        : Colors.transparent,
                  ),
                  child: SvgPicture.asset(
                    _selectedIndex == 2
                        ? 'images/heart1.svg'
                        : 'images/Heart.svg',
                    allowDrawingOutsideViewBox: true,
                    color: Colors.white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.symmetric(horizontal: b * 11),
                  height: h * 38,
                  width: b * 38,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _selectedIndex == 3
                        ? Color(0xff8D8D8D).withOpacity(0.5)
                        : Colors.transparent,
                  ),
                  child: SvgPicture.asset(
                    _selectedIndex == 3
                        ? 'images/Profile.svg'
                        : 'images/prof.svg',
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                label: '',
              ),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
        body: _widgetOptionsInd.elementAt(_selectedIndex));
  }
}
