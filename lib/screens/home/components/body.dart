//  This file contain the code through which in header
//  we draw the Name of the company it's icon nd then
//  we show the search bar for the app.

import 'package:flutter/material.dart';

import '../../../constants.dart';
import './title_with_more_btn.dart';
import '../components/header_with_searchBox.dart';
import './recommend_plants.dart';
import './featured_plants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  Through following line of code we got total
    //  height and width of device we are using.
    Size size = MediaQuery.of(context).size;
    //  It will enable scrolling on smaller
    //  devices.
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: "Recommended", press: () {}),
          //  Below one will cover 80% of our screen
          //  width.
          RecommendPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
