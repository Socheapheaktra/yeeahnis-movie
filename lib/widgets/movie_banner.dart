import 'package:flutter/material.dart';

class MovieBanner extends StatelessWidget {
  const MovieBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: height / 5),
      child: CarouselView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemSnapping: true,
        itemExtent: double.infinity,
        shrinkExtent: 200,
        children: List.generate(10, (index) {
          return Container(
            color: Colors.pink,
            child: Center(
              child: Text('Item $index'),
            ),
          );
        }),
      ),
    );
  }
}
