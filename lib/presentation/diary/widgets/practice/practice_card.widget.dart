import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/app_theme.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';
import 'package:smarthealthy/common/widgets/dismissible/common_dismissible.widget.dart';
import 'package:smarthealthy/data/dtos/add_practice.dto.dart';
import 'package:smarthealthy/data/models/practice.model.dart';
import 'package:smarthealthy/presentation/diary/cubit/add_practice/add_practice_cubit.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';

class PracticeCard extends StatelessWidget {
  final PracticeModel practice;

  const PracticeCard({super.key, required this.practice});

  void _showAddDialog(BuildContext context) {
    final TextEditingController textController = TextEditingController();

    DialogUtil.showCustomDialog(
      context,
      title: practice.name,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: AppTextFormField(
                  keyboardType: TextInputType.number,
                  hintText: practice.minute.toString(),
                  isCenterText: true,
                  textController: textController,
                ),
              ),
              AppSize.w15,
              Text(
                'phút',
                style: TextStyles.s17MediumText,
              )
            ],
          ),
        ],
      ),
      confirmAction: () {
        final value = textController.text;

        context.read<AddPracticeCubit>().add(
              AddPracticeDTO(
                date: context.read<DiaryBloc>().state.currentDate,
                exerciseId: practice.id,
                practiceDuration:
                    value.isNotEmpty ? int.parse(value) : practice.minute,
              ),
            );

        Navigator.of(context).pop();
      },
      isConfirmDialog: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showAddDialog(context),
      child: CommonDismissible(
        valueKey: ValueKey(practice.id),
        hasDismiss: false,
        radius: AppSize.diaryCardRadius,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppSize.diaryCardRadius),
            boxShadow: AppTheme.primaryShadow,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                practice.name,
                style: TextStyles.s17MediumText,
              ),
              AppSize.h10,
              Text(
                '${practice.calo} kcal - ${practice.minute} phút',
                style: TextStyles.s14MediumText
                    .copyWith(color: ColorStyles.red400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
