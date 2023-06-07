import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/core/bloc/root.bloc.dart';
import 'package:smarthealthy/presentation/core/widgets/nav_item.widget.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
      ),
      child: BlocBuilder<RootBloc, RootState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.currentIndex,
            type: BottomNavigationBarType.fixed,
            elevation: 20,
            backgroundColor: Colors.white,
            onTap: (int newIndex) {
              context
                  .read<RootBloc>()
                  .add(RootBottomTabChange(newIndex: newIndex));
            },
            selectedItemColor: ColorStyles.blue300,
            unselectedItemColor: ColorStyles.gray300,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              NavItem(
                iconSvg: Assets.icons.navbar.home,
                title: LocaleKeys.root_home.tr(),
              ),
              NavItem(
                iconSvg: Assets.icons.navbar.findRecipe,
                title: LocaleKeys.root_management.tr(),
              ),
              NavItem(
                iconSvg: Assets.icons.navbar.diary,
                title: LocaleKeys.root_management.tr(),
                iconSize: 29,
              ),
              NavItem(
                iconSvg: Assets.icons.navbar.profile,
                title: LocaleKeys.root_management.tr(),
              )
            ],
          );
        },
        buildWhen: (previous, current) {
          return previous.currentIndex != current.currentIndex;
        },
      ),
    );
  }
}
