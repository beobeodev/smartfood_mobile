import 'package:smarthealthy/flavors.dart';

abstract class Endpoints {
  static final String apiUrl = AppFlavor.apiBaseUrl;

  // Auth
  static final String auth = '$apiUrl/auth';
  static final String login = '$auth/login';
  static final String register = '$auth/register';
  static final String userInfo = '$auth/me';
  static final String changePassword = '$auth/change-password';

  // User
  static final String user = '$apiUrl/users';
  static final String profile = '$user/profile';
  static final String updateNutrition = '$user/stat';
  static final String updateProfile = '$user/info';

  // Ingredient
  static final String ingredient = '$apiUrl/ingredients';

  // Recipe
  static final String recipes = '$apiUrl/recipes';
  static final String recommendedRecipes = '$recipes/recommend';
  static final String getRecipesByIngredients = '$recipes/ingredients';
  static final String cook = '$recipes/cook';
  static final String recipeRating = '$apiUrl/recipe-ratings';

  // Level
  static final String level = '$apiUrl/levels';

  // Cuisine
  static final String cuisine = '$apiUrl/cuisine';

  // Category
  static final String category = '$apiUrl/categories';

  // Diary
  static final String diary = '$apiUrl/diaries';
  static final String deleteMeal = '$diary/meals';
}
