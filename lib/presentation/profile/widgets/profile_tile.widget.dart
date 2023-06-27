import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/icon_tile.widget.dart';

class ProfileTile extends IconTile {
  ProfileTile({
    super.key,
    required super.icon,
    required super.title,
    super.spacing = 10,
    super.color,
    super.iconSize = 28,
    super.isCenter,
    super.onTap,
  }) : super(
          textStyle: TextStyles.s17RegularText.copyWith(color: color),
        );
}
