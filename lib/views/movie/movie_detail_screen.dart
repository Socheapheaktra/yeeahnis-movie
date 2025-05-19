import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yeeahnis_movie/controllers/movie_controller.dart';
import 'package:yeeahnis_movie/controllers/theme_controller.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

import 'package:yeeahnis_movie/utils/app_font.dart';
import 'package:yeeahnis_movie/widgets/app_cached_netword_image_widget.dart';
import 'package:yts_mx_api/yts_mx_api.dart';

class MovieDetailScreen extends StatelessWidget {
  final ThemeController themeController = Get.find();

  MovieDetailScreen({super.key}); // Find the instance of ThemeController

  @override
  Widget build(BuildContext context) {
    // final movieController = Get.find<MovieController>();

    // final Map<String, dynamic> args = Get.arguments as Map<String, dynamic>;
    final Movie args = Get.arguments["movie"];

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              child: Stack(
                children: [
                  AppCachedNetwordImageWidget(
                    imageUrl: args.largeCoverImage,
                    fit: BoxFit.cover,
                    width: Get.width,
                    height: Get.height * 0.3,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      args.title,
                      style: AppFont.semiBold().copyWith(color: Colors.white),
                    ),
                  ),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: ClipOval(
                            child: Container(
                          padding: EdgeInsets.all(1),
                          // padding: EdgeInsets.all(10),
                          color: Colors.grey.withOpacity(0.5),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              )),
                        )),
                      )),
                  Positioned(
                      top: 10,
                      left: 10,
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: ClipOval(
                            child: Container(
                          padding: EdgeInsets.all(1),
                          // padding: EdgeInsets.all(10),
                          color: Colors.grey.withOpacity(0.5),
                          child: IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              )),
                        )),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
