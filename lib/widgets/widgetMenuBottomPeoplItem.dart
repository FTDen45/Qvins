import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

class itemRowPeople extends StatelessWidget {
  itemRowPeople({this.NameAge, this.Path, this.online, this.imgpath});
  final String NameAge;
  final String Path;
  final bool online;
  final String imgpath;
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black38,
      width: MediaQuery.of(context).size.width,
      height: getProportionateScreenHeight(170),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: Column(
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('left avatar');
                      },
                      child: CircleAvatar(
                        radius: getProportionateScreenWidth(41),
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          imgpath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: getProportionateScreenWidth(32),
                        height: getProportionateScreenHeight(14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFD4F6A),
                        ),
                        child: Center(
                          child: Text(
                            Path,
                            style: TextStyle(
                              fontFamily: 'SF UI Text',
                              fontSize: 10.0,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      NameAge,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(4.0),
                    ),
                    Container(
                      width: getProportionateScreenWidth(4.0),
                      height: getProportionateScreenWidth(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF33C500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: getProportionateScreenHeight(38),
            left: MediaQuery.of(context).size.width / 2 -
                getProportionateScreenWidth(57),
            child: Column(
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('center avatar');
                      },
                      child: CircleAvatar(
                        radius: getProportionateScreenWidth(41),
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          imgpath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: getProportionateScreenWidth(32),
                        height: getProportionateScreenHeight(14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFD4F6A),
                        ),
                        child: Center(
                          child: Text(
                            Path,
                            style: TextStyle(
                              fontFamily: 'SF UI Text',
                              fontSize: 10.0,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      NameAge,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(4.0),
                    ),
                    Container(
                      width: getProportionateScreenWidth(4.0),
                      height: getProportionateScreenWidth(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF33C500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: Column(
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('right avatar');
                      },
                      child: CircleAvatar(
                        radius: getProportionateScreenWidth(41),
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          imgpath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: getProportionateScreenWidth(32),
                        height: getProportionateScreenHeight(14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFD4F6A),
                        ),
                        child: Center(
                          child: Text(
                            Path,
                            style: TextStyle(
                              fontFamily: 'SF UI Text',
                              fontSize: 10.0,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      NameAge,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(4.0),
                    ),
                    Container(
                      width: getProportionateScreenWidth(4.0),
                      height: getProportionateScreenWidth(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF33C500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
