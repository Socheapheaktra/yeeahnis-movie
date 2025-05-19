import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yeeahnis_movie/controllers/movie_controller.dart';
import 'package:yeeahnis_movie/controllers/theme_controller.dart';

import 'package:yeeahnis_movie/widgets/app_cached_netword_image_widget.dart';
import 'package:yeeahnis_movie/widgets/movie_showcase_widget.dart';

class HomeScreen extends StatelessWidget {
  final ThemeController themeController = Get.find();

  HomeScreen({super.key}); // Find the instance of ThemeController

  @override
  Widget build(BuildContext context) {
    final movieController = Get.find<MovieController>();
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            expandedHeight: 70,
            flexibleSpace: FlexibleSpaceBar(
              // background: Container(
              //   // color: AppColors.primaryLight,
              //   color: Colors.black,
              // ),
              expandedTitleScale: 1.0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    width: 50,
                    height: 50,
                    child: ClipOval(
                      child: AppCachedNetwordImageWidget(
                          imageUrl:
                              "https://imgv3.fotor.com/images/blog-richtext-image/a-woman-in-black-suit.jpg"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    width: 50,
                    height: 50,
                    child: ClipOval(
                        child: Container(
                      padding: EdgeInsets.all(1),
                      // padding: EdgeInsets.all(10),
                      color: Colors.grey,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    )),
                  ),
                ],
              ),
            ),
            leadingWidth: 76,
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10, right: 10),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  MovieShowcaseWidget(movieController: movieController),
                  SizedBox(
                    height: 10,
                  ),
                  MovieShowcaseWidget(
                    movieController: movieController,
                    title: "Series",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MovieShowcaseWidget(
                    movieController: movieController,
                    title: "Top Rated",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
