import 'package:flutter/material.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class FilterSheet extends StatefulWidget {
  const FilterSheet({super.key});

  @override
  State<FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {
  int currentPage = 1;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    const Spacer(),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      switchInCurve: Curves.easeIn,
                      switchOutCurve: Curves.easeOut,
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                      child: Text(
                        currentPage == 1 ? 'Filter' : 'Categories',
                        key: ValueKey(currentPage),
                        style: TextStyles.boldText.copyWith(
                          fontSize: 16.5,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: TextButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            splashFactory: NoSplash.splashFactory,
                          ),
                          child: Text(
                            'Áp dụng',
                            style: TextStyles.s14RegularText
                                .copyWith(color: ColorStyles.blue400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0,
                color: ColorStyles.gray200,
              )
            ],
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories',
                          style: TextStyles.mediumText.copyWith(fontSize: 16),
                        ),
                        TextButton.icon(
                          onPressed: () {
                            setState(() {
                              currentPage = 10;
                            });
                            _pageController.animateToPage(
                              1,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeIn,
                            );
                          },
                          label: const Icon(
                            Icons.chevron_right_rounded,
                            color: ColorStyles.blue400,
                          ),
                          icon: Text(
                            'View all',
                            style: TextStyles.s14RegularText
                                .copyWith(color: ColorStyles.blue400),
                          ),
                          style: TextButton.styleFrom(
                            splashFactory: NoSplash.splashFactory,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories 2',
                          style: TextStyles.mediumText.copyWith(fontSize: 16),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          label: const Icon(
                            Icons.chevron_right_rounded,
                            color: ColorStyles.blue400,
                          ),
                          icon: Text(
                            'View all',
                            style: TextStyles.s14RegularText
                                .copyWith(color: ColorStyles.blue400),
                          ),
                          style: TextButton.styleFrom(
                            splashFactory: NoSplash.splashFactory,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                currentPage == 1
                    ? const Center(
                        child: Text('check'),
                      )
                    : const Center(
                        child: Text('check 2'),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
