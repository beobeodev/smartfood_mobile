import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/data/models/practice.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/workout/diary_practice_list.widget.dart';
import 'package:smarthealthy/presentation/diary/widgets/diary/workout/practice_loading_list.widget.dart';

class DiaryPracticeSection extends StatelessWidget {
  final List<PracticeModel>? practices;

  const DiaryPracticeSection({super.key, this.practices});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSize.horizontalSpacing),
          child: Text(
            LocaleKeys.diary_mode_workout.tr(),
            style: TextStyles.mediumText
                .copyWith(fontSize: 19.sp, color: ColorStyles.yellowGreen),
          ),
        ),
        practices == null
            ? const PracticeLoadingList()
            : DiaryPracticeList(
                practices: practices!,
              )
      ],
    );
  }
}
