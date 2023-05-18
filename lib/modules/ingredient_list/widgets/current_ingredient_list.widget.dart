import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartfood/common/theme/app_size.dart';
import 'package:smartfood/common/theme/color_styles.dart';
import 'package:smartfood/common/theme/text_styles.dart';
import 'package:smartfood/modules/ingredient_list/ingredient_list.dart';

class CurrentIngredientList extends StatelessWidget {
  const CurrentIngredientList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IngredientListBloc, IngredientListState>(
      builder: (context, state) {
        return ListView.separated(
          itemCount: state.ingredients.length,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSize.horizontalSpace,
          ),
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            final ingredient = state.ingredients[index];

            return Container(
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: ColorStyles.gray100),
              ),
              child: Dismissible(
                key: ValueKey(ingredient.id),
                resizeDuration: const Duration(milliseconds: 100),
                onDismissed: (_) {
                  context
                      .read<IngredientListBloc>()
                      .add(IngredientListEvent.updated(ingredient));
                },
                background: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final imageSize = constraints.maxHeight;

                          return ClipRRect(
                            borderRadius: BorderRadius.circular(1000),
                            child: Image.network(
                              'https://www.halfyourplate.ca/wp-content/uploads/2014/12/one-apple-with-leaves.jpg',
                              width: imageSize,
                              height: imageSize,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Text(
                          ingredient.name,
                          style: TextStyles.s14MediumText,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
