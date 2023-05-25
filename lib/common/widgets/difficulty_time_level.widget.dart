import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:unicons/unicons.dart';

class DifficultyTimeLevel extends StatelessWidget {
  const DifficultyTimeLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        IconTile(
          icon: UniconsLine.chart,
          title: 'Trung bình',
        ),
        SizedBox(
          width: 5,
        ),
        IconTile(
          icon: UniconsLine.clock,
          title: '10 phút',
        ),
      ],
    );
  }
}

class IconTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const IconTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: ColorStyles.gray400,
          size: 18,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          title,
          style: TextStyles.regularText.copyWith(
            color: ColorStyles.gray400,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
