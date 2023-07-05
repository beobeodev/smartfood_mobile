import 'package:smarthealthy/flavors.dart';

abstract class Endpoints {
  static final String apiUrl = AppFlavor.apiBaseUrl;

  // Auth
  static final String login = '$apiUrl/auth/login';
  static final String register = '$apiUrl/auth/register';
  static final String userInfo = '$apiUrl/auth/me';

  // User
  static final String profile = '$apiUrl/users/profile';
  static final String updateNutrition = '$apiUrl/users/stat';

  // Ingredient
  static final String ingredient = '$apiUrl/ingredients';

  // Recipe
  static final String recipes = '$apiUrl/recipes';
  static final String recommendedRecipes = '$apiUrl/recipes/recommend';
  static final String getRecipesByIngredients = '$apiUrl/recipes/ingredients';
  static final String recipeRating = '$apiUrl/recipe-ratings';

  // Level
  static final String level = '$apiUrl/levels';

  // Cuisine
  static final String cuisine = '$apiUrl/cuisine';

  // Category
  static final String category = '$apiUrl/categories';

  // Diary
  static final String diary = '$apiUrl/diaries';
}
