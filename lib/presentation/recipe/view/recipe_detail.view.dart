import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/common/extensions/context.extension.dart';
import 'package:smarthealthy/common/theme/app_size.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/common/theme/text_styles.dart';
import 'package:smarthealthy/common/widgets/app_back_button.widget.dart';
import 'package:smarthealthy/common/widgets/app_rounded_button.widget.dart';
import 'package:smarthealthy/router/app_router.dart';
import 'package:smarthealthy/presentation/recipe/bloc/recipe_detail/recipe_detail.bloc.dart';
import 'package:unicons/unicons.dart';

class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RecipeDetailBloc(),
      child: const _RecipeDetailView(),
    );
  }
}

class _RecipeDetailView extends StatelessWidget {
  const _RecipeDetailView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppBackButton(),
                    Container(
                      width: 38,
                      height: 38,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                        size: 22,
                      ),
                    )
                  ],
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(20),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cơm chiên dương châu',
                          style: TextStyles.boldText.copyWith(fontSize: 18),
                        ),
                        Row(
                          children: List.generate(
                            3,
                            (index) => const Icon(
                              UniconsSolid.star,
                              color: Colors.yellow,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                pinned: true,
                expandedHeight: 0.23 * context.height,
                elevation: 0,
                backgroundColor: ColorStyles.primary,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    'https://assets.bonappetit.com/photos/61b775620fb3fcc4cbf036c1/3:2/w_3000,h_2000,c_limit/20211208%20Spaghetti%20Squash%20with%20Tomato%20Sauce%20and%20Mozarella%20LEDE.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.horizontalSpace,
                    vertical: AppSize.horizontalSpace,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                UniconsLine.clock,
                                color: ColorStyles.gray400,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                '10 phút',
                                style: TextStyles.s14RegularText
                                    .copyWith(color: ColorStyles.gray400),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Row(
                            children: [
                              const Icon(
                                UniconsLine.chart,
                                color: ColorStyles.gray400,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Trung bình',
                                style: TextStyles.s14RegularText
                                    .copyWith(color: ColorStyles.gray400),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Row(
                            children: [
                              Icon(
                                UniconsLine.chart,
                                color: ColorStyles.gray400,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '10 phút',
                                style: TextStyles.s14RegularText,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Description',
                        style: TextStyles.s17BoldText,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        style: TextStyles.s14RegularText,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Ingredients',
                        style: TextStyles.s17BoldText,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (_, __) {
                          return const SizedBox(
                            height: 8,
                          );
                        },
                        itemBuilder: (_, index) {
                          return Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://login.medlatec.vn//ImagePath/images/20221028/20221028_qua-tao-1.jpg',
                                  width: 45,
                                  height: 45,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Trái táo',
                                style: TextStyles.s14MediumText,
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorStyles.blue300,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '2 trái',
                                  style: TextStyles.regularText.copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorStyles.primary,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '120 calo',
                                  style: TextStyles.regularText.copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                        itemCount: 6,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: context.paddingBottom + 5,
            width: context.width / 2,
            child: AppRoundedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRouter.recipeStep);
              },
              content: 'Start cooking',
              suffixIcon: const Icon(
                UniconsLine.play_circle,
                color: Colors.white,
                size: 27,
              ),
              backgroundColor: ColorStyles.primary,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
