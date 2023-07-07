import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/widgets/common_app_bar.widget.dart';
import 'package:smarthealthy/common/widgets/common_icon_button.widget.dart';
import 'package:smarthealthy/common/widgets/common_search_field.widget.dart';
import 'package:smarthealthy/generated/locale_keys.g.dart';
import 'package:smarthealthy/presentation/home/widgets/home_body.widget.dart';
import 'package:smarthealthy/router/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeView();
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: CommonSearchField(
          readOnly: true,
          hintText: LocaleKeys.search_recipe.tr(),
          onTap: () => Navigator.of(context).pushNamed(
            AppRouter.searchRecipe,
          ),
        ),
        actions: [
          CommonIconButton(
            onPressed: () {},
            icon: Icons.notifications_on_outlined,
            iconColor: ColorStyles.primary,
          ),
          AppSize.w20
        ],
      ),
      body: const HomeBody(),
      backgroundColor: Colors.white,
    );
  }
}
