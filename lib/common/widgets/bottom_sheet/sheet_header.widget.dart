import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';

class SheetHeader extends StatelessWidget {
  final String title;

  const SheetHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h,
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyles.boldText.copyWith(fontSize: 20.sp),
          ),
        ),
        const Divider(
          height: 0,
        ),
      ],
    );
  }
}
