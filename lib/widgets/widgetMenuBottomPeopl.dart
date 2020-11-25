import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';
import 'package:qvins/widgets/widgetMenuBottomPeoplItem.dart';

class widgetMenuBottomPeopl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      width: MediaQuery.of(context).size.width,
      //height: getProportionateScreenHeight(312),
      padding: EdgeInsets.only(
        //top: getProportionateScreenWidth(16),
        right: getProportionateScreenWidth(16),
        left: getProportionateScreenWidth(16),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -60,
            left: getProportionateScreenWidth(375 / 2) -
                getProportionateScreenWidth(92),
            child: SvgPicture.asset('assets/images/img/PeopleLogo.svg'),
          ),
          SingleChildScrollView(
            child: Column(children: [
              itemRowPeople(
                  NameAge: 'Алия, 19',
                  Path: '3 km',
                  online: true,
                  imgpath: 'assets/images/img/PeopleAvatar.png'),
              itemRowPeople(
                  NameAge: 'Алия, 19',
                  Path: '3 km',
                  online: true,
                  imgpath: 'assets/images/img/PeopleAvatar_02.png'),
              itemRowPeople(
                  NameAge: 'Алия, 19',
                  Path: '3 km',
                  online: true,
                  imgpath: 'assets/images/img/PeopleAvatar_03.png'),
              itemRowPeople(
                  NameAge: 'Алия, 19',
                  Path: '3 km',
                  online: true,
                  imgpath: 'assets/images/img/PeopleAvatar.png'),
              itemRowPeople(
                  NameAge: 'Алия, 19',
                  Path: '3 km',
                  online: true,
                  imgpath: 'assets/images/img/PeopleAvatar.png'),
            ]),
          ),
        ],
      ),
    );
  }
}
