import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intern/Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Bag extends StatelessWidget {
  List img = [
    'images/shirt.png',
    'images/jeans.png',
    'images/shoes.png',
  ];
  List txt = ['Breezy Shirt', 'Linen Chino', 'White Sneakers'];
  List txt1 = ['House of Rare', 'HighLander', 'Benetton'];
  List txt2 = ['XXL', '32', '9'];

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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(b * 10),
                        ),
                        child: Icon(Icons.chevron_left,
                            color: Colors.white, size: b * 30),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Anand\'s Bag',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: b * 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                      ),
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
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    color: Color(0xfffefff8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(b * 20),
                      topRight: Radius.circular(b * 20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sh(15),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: b * 48),
                          child: Text(
                            'Items In Your Bag',
                            style: TextStyle(
                              color: Color(0xff424242),
                              fontSize: b * 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                        sh(15),
                        ListView.builder(
                          itemCount: 3,
                          padding: EdgeInsets.symmetric(horizontal: b * 38),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: h * 16),
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            b * 76, h * 10, b * 6, h * 10),
                                        decoration: BoxDecoration(
                                          color: Color(0xfff3f3f3),
                                          borderRadius:
                                              BorderRadius.circular(b * 10),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  txt[index],
                                                  style: txtS(Color(0xff111111),
                                                      10, FontWeight.w500),
                                                ),
                                                sh(4),
                                                Text(
                                                  txt1[index],
                                                  style: txtS(Color(0xff828282),
                                                      8, FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "\u20B9 2300",
                                                  style: txtS(Color(0xff111111),
                                                      12, FontWeight.w500),
                                                ),
                                                Row(
                                                  children: [
                                                    Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Text(
                                                          "\u20B9 1994",
                                                          style: txtS(
                                                              Color(0xff313131),
                                                              8,
                                                              FontWeight.w500),
                                                        ),
                                                        RotationTransition(
                                                          turns:
                                                              AlwaysStoppedAnimation(
                                                                  15 / 360),
                                                          child: Container(
                                                            width: b * 30,
                                                            color: Color(
                                                                0xff313131),
                                                            height: 0.5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: b * 5),
                                                    Text(
                                                      "20% Off",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xffEC981A,
                                                        ),
                                                        fontSize: b * 8,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      sh(6),
                                      Row(
                                        children: [
                                          SizedBox(width: b * 76),
                                          CircleAvatar(
                                            radius: b * 16,
                                            backgroundColor: Color(0xfff1f5ff),
                                            child: Text(
                                              txt2[index],
                                              style: txtS(Color(0xff111111), 12,
                                                  FontWeight.w500),
                                            ),
                                          ),
                                          Spacer(),
                                          CircleAvatar(
                                            radius: b * 16,
                                            backgroundColor: Color(0xffe1f3c9),
                                            child: SvgPicture.asset(
                                              'images/bagBold.svg',
                                              allowDrawingOutsideViewBox: true,
                                            ),
                                          ),
                                          SizedBox(width: b * 10),
                                          CircleAvatar(
                                            radius: b * 16,
                                            backgroundColor: Color(0xfffee1e1),
                                            child: SvgPicture.asset(
                                              'images/Heart.svg',
                                              allowDrawingOutsideViewBox: true,
                                              color: Colors.black,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: h * 7,
                                    left: b * 6,
                                    child: Image.asset(
                                      img[index],
                                      width: b * 64,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        sh(8),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: b * 38),
                          width: SizeConfig.screenWidth,
                          color: Color(0xffdadada),
                          height: 0.5,
                        ),
                        sh(14),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: b * 38),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Total",
                                    style: txtS(
                                        Color(0xff111111), 14, FontWeight.w500),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\u20B9 4616",
                                    style: txtS(
                                        Color(0xff111111), 16, FontWeight.w600),
                                  ),
                                ],
                              ),
                              sh(6),
                              Row(
                                children: [
                                  Text(
                                    "Inclusive of taxes",
                                    style: txtS(
                                        Color(0xffacacac), 10, FontWeight.w500),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    child: Text(
                                      "Breakdown",
                                      style: TextStyle(
                                        color: Color(0xff71a569),
                                        fontSize: b * 12,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: b * 78, vertical: b * 20),
                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(vertical: h * 17),
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(b * 12),
                            ),
                            onPressed: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: SizeConfig.screenWidth,
                              child: Text(
                                'Check Out',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: b * 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
