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
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            expandedHeight: 70,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                // color: AppColors.primaryLight,
                color: Colors.black,
              ),
            ),
            leadingWidth: 76,
            leading: Container(
              margin: EdgeInsets.only(left: 20),
              width: 50,
              height: 50,
              child: ClipOval(
                child: AppCachedNetwordImageWidget(
                    imageUrl:
                        "https://imgv3.fotor.com/images/blog-richtext-image/a-woman-in-black-suit.jpg"),
              ),
            ),
            actions: [
              SizedBox(
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
              SizedBox(
                width: 16,
              )
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
