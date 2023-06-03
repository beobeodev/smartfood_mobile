import 'package:flutter/material.dart';

class FilledRoundedButton extends StatelessWidget {
  final VoidCallback? onTap;
  final dynamic icon;

  const FilledRoundedButton({super.key, this.onTap, required this.icon})
      : assert(
          icon != null && (icon is IconData || icon is Widget),
          'icon must not null and it must be a IconData or Widget',
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 38,
        height: 38,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: icon is IconData
            ? Icon(
                icon,
                color: Colors.redAccent,
                size: 22,
              )
            : icon,
      ),
    );
  }
}
