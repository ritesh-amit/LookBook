import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:intern/Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  List col = [
    Color(0xfff1f5ff),
    Color(0xffFEE1E1),
    Color(0xffFDECD2),
    Color(0xfff1f5ff),
    Color(0xffFEE1E1),
    Color(0xffFDECD2),
  ];
  List img = [
    'images/scale.png',
    'images/mooch.png',
    'images/hanger.png',
  ];
  List txt = ['Size & Fit', 'Style', 'Closet'];
  List txt1 = [
    'Your Size & Fit Preferences',
    'Your Style Preferences',
    'Your Closet'
  ];
  List assets = ['cube', 'info', 'round', 'lock', 'doc'];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 360;
    var h = SizeConfig.screenHeight / 640;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F4EF),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                color: Color(0xffF5F4EF),
                padding: EdgeInsets.symmetric(horizontal: b * 18),
                height: h * 60,
                child: Row(
                  children: [
                    Text(
                      'Profile',
                      style: txtS(Color(0xff111111), 16, FontWeight.w500),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: b * 21,
                      backgroundColor: Color(0xffE9E4FC),
                      child: SvgPicture.asset(
                        'images/Combined Shape.svg',
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffefff8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(b * 20),
                      topRight: Radius.circular(b * 20),
                    ),
                  ),
                  child: Column(
                    children: [
                      sh(22),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: b * 18),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: b * 41,
                              child: Image.asset(
                                'images/Avatar 1.png',
                                width: b * 82,
                                height: h * 82,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: b * 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Anand Kumar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: b * 18,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                                sh(12),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Edit Profile',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: b * 12,
                                      decoration: TextDecoration.underline,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: SizeConfig.screenWidth,
                        height: h * 109,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.only(left: b * 18, top: h * 23),
                          itemCount: 3,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return Container(
                              height: h * 86,
                              margin: EdgeInsets.only(
                                right: b * 6,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(b * 10),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/back.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              width: b * 131,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: b * 8, vertical: h * 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(b * 10),
                                  color: col[index].withOpacity(0.8),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(img[index],
                                        height: h * 32, width: b * 32),
                                    Spacer(),
                                    Text(
                                      txt[index],
                                      style: txtS(Color(0xff111111), 10,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      txt1[index],
                                      style: txtS(Color(0xff111111), 8,
                                          FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      sh(45 - 13),
                      titleRow("All Purchases", assets[0]),
                      titleRow("FAQs", assets[1]),
                      titleRow("Exchanges & Return Policy", assets[2]),
                      titleRow("Privacy Policy", assets[3]),
                      titleRow("About Us", assets[4]),
                      sh(7),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: b * 16),
                        child: Row(
                          children: [
                            Expanded(
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(b * 10),
                                color: Color(0xff65AA54),
                                child: Container(
                                  height: h * 45,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff2ffee),
                                    borderRadius: BorderRadius.circular(b * 10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'images/ear.svg',
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                      SizedBox(width: b * 25),
                                      Text(
                                        "Need Assistance ?",
                                        style: txtS(Color(0xff111111), 14,
                                            FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleRow(String title, String icon) {
    var b = SizeConfig.screenWidth / 360;
    var h = SizeConfig.screenHeight / 640;

    return InkWell(
      onTap: () {}, //give page where to route
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: b * 19, vertical: h * 10),
        child: Row(
          children: [
            SvgPicture.asset(
              'images/$icon.svg',
              allowDrawingOutsideViewBox: true,
            ),
            SizedBox(width: b * 18),
            Text(
              title,
              style: txtS(Color(0xff111111), 12, FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
