import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/generated/assets.gen.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/core/bloc/root.bloc.dart';

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
              BottomNavigationBarItem(
                icon: Assets.icons.navbar.home.svg(
                  colorFilter: const ColorFilter.mode(
                    ColorStyles.gray400,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: Assets.icons.navbar.home.svg(
                  colorFilter: const ColorFilter.mode(
                    ColorStyles.primary,
                    BlendMode.srcIn,
                  ),
                ),
                label: LocaleKeys.root_home.tr(),
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.navbar.findRecipe.svg(
                  colorFilter: const ColorFilter.mode(
                    ColorStyles.gray400,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: Assets.icons.navbar.findRecipe.svg(
                  colorFilter: const ColorFilter.mode(
                    ColorStyles.primary,
                    BlendMode.srcIn,
                  ),
                ),
                label: LocaleKeys.root_management.tr(),
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.navbar.favorite.svg(
                  colorFilter: const ColorFilter.mode(
                    ColorStyles.gray400,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: Assets.icons.navbar.favorite.svg(
                  colorFilter: const ColorFilter.mode(
                    ColorStyles.primary,
                    BlendMode.srcIn,
                  ),
                ),
                label: LocaleKeys.texts_notification.tr(),
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.navbar.profile.svg(
                  colorFilter: const ColorFilter.mode(
                    ColorStyles.gray400,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: Assets.icons.navbar.profile.svg(
                  colorFilter: const ColorFilter.mode(
                    ColorStyles.primary,
                    BlendMode.srcIn,
                  ),
                ),
                label: LocaleKeys.root_profile.tr(),
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
