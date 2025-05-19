import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yeeahnis_movie/controllers/theme_controller.dart';
import 'package:yeeahnis_movie/views/home/home_screen.dart';
import 'package:yeeahnis_movie/widgets/app_cached_netword_image_widget.dart';

class DashboardScreen extends StatelessWidget {
  final ThemeController themeController = Get.find();

  DashboardScreen({super.key}); // Find the instance of ThemeController

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomeScreen(),

      Center(
        child: Text("Favorites Screen"),
      ),
      Center(
        child: Text("Download Screen"),
      ),
      Center(
        child: Text("Movie Screen"),
      )
      // MovieScreen(),
      // ProfileScreen(),
    ];
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.recommend), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.download), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.movie), label: ""),
            ]),
        body: pages.elementAt(0));
  }
}
