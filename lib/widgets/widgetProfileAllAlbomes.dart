import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

import 'package:qvins/screens/main/main_screen.dart';

class widgetProfileAllAlbomes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(16),
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(
              catData.id,
              catData.title,
              catData.img,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: getProportionateScreenWidth(375) / 2,
        childAspectRatio: 4 / 2,
        crossAxisSpacing: getProportionateScreenWidth(8),
        mainAxisSpacing: getProportionateScreenWidth(8),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String img;

  CategoryItem(this.id, this.title, this.img);

  void selectCategory(BuildContext ctx) {
    Navigator.push(
        ctx,
        MaterialPageRoute(
          builder: (context) => MainScreen(
            SettingsSearchPeople: 3,
            selectedIndex: 4,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(
      //   horizontal: getProportionateScreenWidth(8),
      // ),
      child: GestureDetector(
        onTap: () {
          //tapEvents(tap);
          selectCategory(context);
        },
        child: Container(
          width: getProportionateScreenWidth(168),
          height: getProportionateScreenHeight(86),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(4.0)),
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                  width: getProportionateScreenWidth(185),
                  height: getProportionateScreenHeight(101),
                ),
              ),
              Positioned(
                left: getProportionateScreenWidth(12),
                bottom: getProportionateScreenHeight(12),
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize:
                        ResponsiveFlutter.of(context).fontSize(1.5), //12.0,
                    color: Colors.white,
                    //fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
        // child: Image.asset(
        //   img,
        //   width: getProportionateScreenWidth(122),
        //   height: getProportionateScreenHeight(77),
        //   fit: BoxFit.fill,
        // ),
      ),
    );
  }
}

class Category {
  final String id;
  final String title;
  final String img;

  const Category({
    @required this.id,
    @required this.title,
    @required this.img,
  });
}

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Концерт Коржа',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c2',
    title: 'Мои друзья',
    img: 'assets/images/img/Event_item_02.jpg',
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c4',
    title: 'German',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c9',
    title: 'French',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    img: 'assets/images/img/Event_item_01.jpg',
  ),
];
