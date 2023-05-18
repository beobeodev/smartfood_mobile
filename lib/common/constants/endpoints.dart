import 'package:smartfood/flavors.dart';

abstract class Endpoints {
  static final String apiUrl = AppFlavor.apiBaseUrl;

  static final String login = '$apiUrl/auth/login';
  static final String userInfo = '$apiUrl/auth/me';

  // Ingredient
  static final String ingredient = '$apiUrl/ingredients';

  // Recipe
  static final String recipe = '$apiUrl/recipes';
  static final String getRecipesByIngredients = '$apiUrl/recipes/ingredients';
}
