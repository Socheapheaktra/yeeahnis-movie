import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:yeeahnis_movie/controllers/movie_controller.dart';
import 'package:yeeahnis_movie/controllers/theme_controller.dart';
import 'package:yeeahnis_movie/utils/app_font.dart';
import 'package:yeeahnis_movie/widgets/app_cached_netword_image_widget.dart';
import 'package:yts_mx_api/yts_mx_api.dart';

class MovieDetailScreen extends StatelessWidget {
  final ThemeController themeController = Get.find();

  MovieDetailScreen({super.key}); // Find the instance of ThemeController

  @override
  Widget build(BuildContext context) {
    final movieController = Get.find<MovieController>();
    final Movie args = Get.arguments["movie"];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      movieController.getMovieDetail(args.id);
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              bottom: false,
              child: Stack(
                children: [
                  // Obx(() {
                  //   if (movieController.isLoading.value) {
                  //     return SizedBox(
                  //         height: 200,
                  //         child: Center(child: CircularProgressIndicator()));
                  //   }

                  //   return AppCachedNetwordImageWidget(
                  //     imageUrl: movieDetailExtend["detail"]
                  //         ["large_cover_image"],
                  //     fit: BoxFit.cover,
                  //     width: Get.width,
                  //     height: Get.height * 0.3,
                  //   );
                  // }),
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
                      // args.de,
                      "Preview",

                      style: AppFont.semiBold().copyWith(color: Colors.white),
                    ),
                  ),
                  Positioned(
                      top: 30,
                      right: 30,
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
                      top: 30,
                      left: 30,
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
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    args.title,
                    style: AppFont.semiBold().copyWith(color: Colors.white),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.cloud_download,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "95 match",
                        style: AppFont.regular()
                            .copyWith(color: HexColor("#FE7743")),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "2023",
                        style: AppFont.regular().copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "2h 49m",
                        style: AppFont.regular().copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "R",
                        style: AppFont.regular().copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "HD",
                        style: AppFont.regular().copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16))),
                      onPressed: () {},
                      child: Text(
                        "Watch Now",
                        style: AppFont.semiBold().copyWith(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Prologue",
                    style: AppFont.semiBold().copyWith(color: Colors.white),
                  ),
                  Text(
                    args.descriptionFull,
                    style: AppFont.regular().copyWith(color: Colors.grey),
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
