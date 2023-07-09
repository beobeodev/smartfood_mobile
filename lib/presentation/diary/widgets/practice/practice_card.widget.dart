import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/app_theme.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';
import 'package:smarthealthy/common/widgets/dismissible/common_dismissible.widget.dart';
import 'package:smarthealthy/presentation/diary/cubit/add_practice_cubit.dart';

class PracticeCard extends StatelessWidget {
  final int index;

  const PracticeCard({super.key, required this.index});

  void _showAddDialog(BuildContext context) {
    DialogUtil.showCustomDialog(
      context,
      title: 'Leo cầu thang',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Expanded(
                child: AppTextFormField(
                  keyboardType: TextInputType.number,
                  hintText: '30',
                  isCenterText: true,
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
        context.read<AddPracticeCubit>().add();
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
        valueKey: ValueKey(index),
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
                'Chạy bộ',
                style: TextStyles.s17BoldText,
              ),
              AppSize.h10,
              Text(
                '1150kcal - 30 phút',
                style: TextStyles.s14MediumText,
              )
            ],
          ),
        ),
      ),
    );
  }
}
