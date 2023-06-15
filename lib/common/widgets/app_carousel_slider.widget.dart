import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';

class AppCarouselSlider extends StatefulWidget {
  final List<Widget> items;

  const AppCarouselSlider({super.key, required this.items});

  @override
  State<AppCarouselSlider> createState() => _AppCarouselSliderState();
}

class _AppCarouselSliderState extends State<AppCarouselSlider> {
  final CarouselController _carouselController = CarouselController();
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.9,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            enlargeFactor: 0.2,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                currentPageIndex = index;
              });
            },
          ),
          carouselController: _carouselController,
          items: widget.items,
        ),
        AppSize.h10,
        SizedBox(
          height: 9,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    width: constraints.maxHeight,
                    height: constraints.maxHeight,
                    decoration: BoxDecoration(
                      color: index == currentPageIndex
                          ? ColorStyles.primary
                          : ColorStyles.gray200,
                      shape: BoxShape.circle,
                    ),
                  );
                },
              );
            },
            separatorBuilder: (_, index) {
              return const SizedBox(
                width: 8,
              );
            },
            itemCount: widget.items.length,
          ),
        )
      ],
    );
  }
}
