import 'package:advance_image_picker/advance_image_picker.dart';
import 'package:flutter/material.dart';
import 'package:smartfood/modules/auth/views/login.view.dart';
import 'package:smartfood/modules/core/views/root.view.dart';
import 'package:smartfood/modules/recipe/recipe.dart';
import 'package:smartfood/modules/splash/splash.dart';

abstract class AppRoutes {
  static const String splash = '/';

  // Auth
  static const String login = '/login';
  static const String register = '/register';

  // Root
  static const String root = '/root';

  // find recipe
  static const String imagePicker = '/image_picker';
  static const String detectIngredient = '/detect_ingredient';
  static const String recipeDetail = '/recipe_detail';
  static const String recipeStep = '/recipe_step';
  // static final router = GoRouter(
  //   routes: [
  //     GoRoute(
  //       path: login,
  //       pageBuilder: (_, __) {
  //         return const MaterialPage(
  //           child: LoginPage(),
  //         );
  //       },
  //     ),
  //     GoRoute(
  //       path: register,
  //       pageBuilder: (_, __) {
  //         return const MaterialPage(
  //           child: RegisterView(),
  //         );
  //       },
  //     ),
  //     GoRoute(
  //       path: root,
  //       pageBuilder: (_, __) {
  //         return const MaterialPage(
  //           child: RootPage(),
  //         );
  //       },
  //     )
  //   ],
  //   initialLocation: login,
  // );

  static Route? onGenerateRoute(RouteSettings settings) {
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
