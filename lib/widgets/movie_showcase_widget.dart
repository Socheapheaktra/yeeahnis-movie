import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:get/get.dart';

import 'package:yeeahnis_movie/controllers/movie_controller.dart';
import 'package:yeeahnis_movie/routes/app_route.dart';
import 'package:yeeahnis_movie/utils/app_font.dart';
import 'package:yeeahnis_movie/widgets/app_cached_netword_image_widget.dart';

class MovieShowcaseWidget extends StatelessWidget {
  const MovieShowcaseWidget({
    super.key,
    required this.movieController,
    this.title,
  });

  final MovieController movieController;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title ?? "Trending Movie",
              style: AppFont.bold(fontSize: 18, color: Colors.white),
            ),
            Text(
              "See all",
              style: AppFont.regular(fontSize: 16, color: Colors.white),
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Obx(() {
          if (movieController.isLoading.value) {
            return SizedBox(
                height: 200, child: Center(child: CircularProgressIndicator()));
          }

          return FlutterCarousel(
            options: FlutterCarouselOptions(
              height: 200.0,
              showIndicator: true,
              autoPlay: true,
              viewportFraction: 0.4,
              initialPage: 1,
              enableInfiniteScroll: true,
              slideIndicator: CircularSlideIndicator(),
            ),
            items: movieController.trendingMovieList.map((movie) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.movieDetail, arguments: {
                    "movie": movie,
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: AppCachedNetwordImageWidget(
                    imageUrl: movie.largeCoverImage, // <-- Use the model field
                    fit: BoxFit.cover,
                    width: 150,
                    height: 200,
                    errorWidget: Image.asset("assets/images/no_profile.png"),
                  ),
                ),
              );
            }).toList(),
          );
        })
      ],
    );
  }
}
