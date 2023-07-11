import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/utils/dialog.util.dart';
import 'package:smarthealthy/common/widgets/app_text_form_field.widget.dart';
import 'package:smarthealthy/common/widgets/dismissible/common_dismissible.widget.dart';
import 'package:smarthealthy/common/widgets/focused_menu/focus_menu_holder.dart';
import 'package:smarthealthy/common/widgets/focused_menu/focused_menu_item.dart';
import 'package:smarthealthy/data/dtos/add_practice.dto.dart';
import 'package:smarthealthy/data/models/practice.model.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/diary/cubit/add_practice/add_practice_cubit.dart';
import 'package:smarthealthy/presentation/diary/cubit/delete_practice/delete_practice_cubit.dart';
import 'package:smarthealthy/presentation/diary/diary.dart';
import 'package:smarthealthy/presentation/diary/widgets/practice/practice_container.widget.dart';

class PracticeCard extends StatelessWidget {
  final PracticeModel practice;
  final bool enableFocus;

  const PracticeCard({
    super.key,
    required this.practice,
    this.enableFocus = false,
  });

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
    return FocusedMenuHolder(
      menuOffset: 10,
      enabled: enableFocus,
      menuItems: [
        FocusedMenuItem(
          title: Text(LocaleKeys.texts_delete.tr()),
          onPressed: () {
            context.read<DeletePracticeCubit>().submit(practice.id);
          },
        )
      ],
      onPressed: () {
        if (!enableFocus) {
          _showAddDialog(context);
        }
      },
      child: CommonDismissible(
        valueKey: ValueKey(practice.id),
        hasDismiss: false,
        radius: AppSize.diaryCardRadius,
        child: PracticeContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                practice.name,
                style: TextStyles.s17MediumText,
              ),
              AppSize.h10,
              Text(
                '${practice.totalCalories} kcal - ${practice.totalDuration} phút',
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
