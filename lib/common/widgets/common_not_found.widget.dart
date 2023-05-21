import 'package:flutter/material.dart';
import 'package:smartfood/common/extensions/context.extension.dart';
import 'package:smartfood/common/theme/text_styles.dart';
import 'package:smartfood/generated/assets.gen.dart';

class CommonNotFound extends StatelessWidget {
  final String text;

  const CommonNotFound({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.images.lottie.searchNotFound.lottie(
          width: context.width / 2,
        ),
        Text(
          text,
          style: TextStyles.mediumText.copyWith(fontSize: 15),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
