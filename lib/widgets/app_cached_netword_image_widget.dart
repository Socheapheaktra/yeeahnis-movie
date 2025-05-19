import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:yeeahnis_movie/utils/app_colors.dart';

class AppCachedNetwordImageWidget extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final double? width;
  final double? height;
  final Color progressIndicatorColor;
  final Widget? errorWidget;

  const AppCachedNetwordImageWidget({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.progressIndicatorColor = Colors.blue,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: width,
      height: height,
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
        child: SpinKitRing(color: AppColors.primaryLight, size: 50.0),
      ),
      errorWidget: (context, url, error) =>
          errorWidget ?? Image.asset("assets/images/no_profile.png"),
    );
  }
}
