import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qvins/size_cofige.dart';

import 'package:qvins/screens/main/main_screen.dart';

import 'package:provider/provider.dart';
import 'package:qvins/MyModel.dart';

class widgetProfileAllAlbomesItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
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
        maxCrossAxisExtent: getProportionateScreenWidth(375) / 3,
        childAspectRatio: 1,
        crossAxisSpacing: getProportionateScreenWidth(1),
        mainAxisSpacing: getProportionateScreenWidth(1),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String img;

  CategoryItem(this.id, this.title, this.img);

  void selectCategory(BuildContext ctx, model) {
    model.selectedIndex = 4;
    model.numBar = 5;
    Navigator.push(
        ctx,
        MaterialPageRoute(
          builder: (context) => MainScreen(
            SettingsSearchPeople: 5,
            selectedIndex: 4,
            widgetMenuBottomMessagesUserChatBool: false,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyModel>(context);
    return Container(
      // margin: EdgeInsets.symmetric(
      //   horizontal: getProportionateScreenWidth(8),
      // ),
      child: GestureDetector(
        onTap: () {
          //tapEvents(tap);
          selectCategory(context, model);
        },
        child: Container(
          width: getProportionateScreenWidth(168),
          height: getProportionateScreenHeight(86),
          child: Image.asset(
            img,
            fit: BoxFit.cover,
            width: getProportionateScreenWidth(185),
            height: getProportionateScreenHeight(101),
          ),
        ),
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
