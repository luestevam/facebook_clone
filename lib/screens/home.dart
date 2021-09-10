import 'package:facebbook/components/story_area.dart';
import 'package:facebbook/components/button_circle.dart';
import 'package:facebbook/components/area_post_create.dart';
import 'package:facebbook/data/dados.dart';
import 'package:facebbook/util/thema.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            //expandedHeight: 250,
            floating: true,
            centerTitle: false,
            title: Text(
              "Face Clone",
              style: TextStyle(
                  color: ColorPalette.blueFacebook,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: 1.2),
            ),
            actions: [
              ButtonCircle(
                icone: Icons.search,
                iconeTamanho: 30,
                onPressed: () {},
              ),
              ButtonCircle(
                icone: LineIcons.facebookMessenger,
                iconeTamanho: 30,
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: AreaPostCreate(
              user: currentUser,
            ) ,
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: StoryArea(
              user: currentUser,
                stories: story,              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.green,
              height: 2000,
            ),
          )
        ],
      ),
    );
  }
}
