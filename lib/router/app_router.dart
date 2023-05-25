import 'package:advance_image_picker/advance_image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthealthy/presentation/auth/views/login.view.dart';
import 'package:smarthealthy/presentation/core/views/root.view.dart';
import 'package:smarthealthy/presentation/ingredient_list/ingredient_list.dart';
import 'package:smarthealthy/presentation/recipe/recipe.dart';
import 'package:smarthealthy/presentation/recipe_list/recipe_list.dart';
import 'package:smarthealthy/presentation/splash/splash.dart';

abstract class AppRouter {
  static const String splash = '/';

  // Auth
  static const String login = '/login';
  static const String register = '/register';

  // Root
  static const String root = '/root';

  // Ingredient
  static const String ingredientList = '/ingredient_list';
  static const String detectIngredient = '/detect_ingredient';

  // Recipe
  static const String recipeList = '/recipe_list';
  static const String recipeDetail = '/recipe_detail';
  static const String recipeStep = '/recipe_step';

  static const String imagePicker = '/image_picker';

  static Route? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) {
            return const SplashPage();
          },
        );
      case login:
        return MaterialPageRoute(
          builder: (_) {
            return const LoginPage();
          },
        );
      case root:
        return MaterialPageRoute(
          builder: (_) {
            return const RootPage();
          },
        );
      case ingredientList:
        final bloc = arguments as IngredientListBloc;

        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider.value(
              value: bloc,
              child: const IngredientListPage(),
            );
          },
        );
      case imagePicker:
        return MaterialPageRoute<List<ImageObject>?>(
          builder: (_) {
            return const ImagePicker();
          },
        );
      case detectIngredient:
        return MaterialPageRoute(
          builder: (_) {
            return IngredientDetectionPage(
              imagePaths: settings.arguments as List<String>,
            );
          },
        );
      case recipeList:
        return MaterialPageRoute(
          builder: (_) {
            return RecipeListPage(
              ingredientIds: arguments as List<String>,
            );
          },
        );
      case recipeDetail:
        return MaterialPageRoute(
          builder: (_) {
            return const RecipeDetailPage();
          },
        );
      case recipeStep:
        return MaterialPageRoute(
          builder: (_) {
            return const RecipeStepPage();
          },
        );
      default:
        return null;
    }
  }
}
