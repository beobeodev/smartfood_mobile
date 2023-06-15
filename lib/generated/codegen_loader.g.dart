// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "texts": {
    "notification": "Notification",
    "success": "Success",
    "error_occur": "An error has occurred, please try again later",
    "email_address": "Email Address",
    "password": "Password"
  },
  "button": {
    "cancel": "Cancel",
    "confirm": "Confirm"
  },
  "root": {
    "home": "Home",
    "profile": "Profile",
    "management": "Management"
  },
  "auth": {
    "welcome_back": "Nice to have you back!",
    "sign_in": "Sign In",
    "sign_in_introduction": "Sign in to your account - experience amazing features to enjoy delicious food, healthy diet, and more.",
    "sign_up": "Sign Up",
    "sign_up_introduction": "Sign up for an account and start experiencing amazing features to enjoy delicious food, healthy diet, and more.",
    "sign_in_with": "or sign in with",
    "sign_in_with_google": "Sign in with Google",
    "sign_in_with_apple": "Sign in with Apple",
    "forgot_password": "Forgot password?",
    "not_have_account": "Don’t Have an account?",
    "have_account": "Have an account?"
  },
  "ingredient": {
    "find": "Search for ingredients"
  },
  "validator": {
    "email_required": "Please enter your email",
    "password_required": "Please enter your password",
    "invalid_email": "Invalid email address",
    "incorrect_email_password": "Incorrect email or password",
    "invalid_password": "Password must be at least 8 characters",
    "field_required": "This field is required",
    "not_match_password": "Password and confirm password not match"
  },
  "search": {
    "ingredient_not_found": "Did not find any ingredients for your search",
    "recipe": "Search for recipes"
  },
  "filter": {
    "level": "Level",
    "cuisine": "Cuisine",
    "category": "Category"
  },
  "measure": {
    "height": "Height (in cm)",
    "weight": "Weight (in kg)",
    "age": "Age"
  },
  "macros": {
    "protein": "Protein",
    "carbs": "Carbs",
    "fat": "Fat"
  },
  "meal": {
    "title": "Meal",
    "breakfast": "Breakfast",
    "lunch": "Lunch",
    "dinner": "Dinner",
    "list": "List of dishes",
    "add_dish": "Add dishes",
    "enter_dish": "Enter a dish name"
  },
  "diary_mode": {
    "meal": "Meal",
    "workout": "Workout"
  }
};
static const Map<String,dynamic> vi = {
  "texts": {
    "notification": "Thông báo",
    "success": "Thành công",
    "error_occur": "Đã có lỗi xảy ra, vui lòng thử lại sau",
    "email_address": "Email",
    "password": "Mật khẩu"
  },
  "button": {
    "cancel": "Hủy",
    "confirm": "Xác nhận"
  },
  "root": {
    "home": "Trang chủ",
    "profile": "Cá nhân",
    "management": "Quản lý"
  },
  "auth": {
    "welcome_back": "Rất vui khi được gặp lại bạn!",
    "sign_in": "Đăng Nhập",
    "sign_in_introduction": "Đăng nhập vào tài khoản của bạn - trải nghiệm những tính năng tuyệt vời để tận hưởng các món ăn ngon, chế độ ăn uống lành mạnh và hơn thế nữa.",
    "sign_up": "Đăng Ký",
    "sign_up_introduction": "Đăng ký tài khoản và bắt đầu trải nghiệm những tính năng tuyệt vời để tận hưởng các món ăn ngon, chế độ ăn uống lành mạnh và hơn thế nữa.",
    "sign_in_with": "hoặc đăng nhập với",
    "sign_in_with_google": "Đăng nhập với Google",
    "sign_in_with_apple": "Đăng nhập với Apple",
    "forgot_password": "Quên mật khẩu?",
    "not_have_account": "Chưa có tài khoản?",
    "have_account": "Đã có tài khoản?"
  },
  "ingredient": {
    "find": "Tìm kiếm nguyên liệu"
  },
  "validator": {
    "email_required": "Vui lòng nhập email",
    "password_required": "Vui lòng nhập mật khẩu",
    "invalid_email": "Không đúng định dạng email",
    "incorrect_email_password": "Email hoặc mật khẩu không đúng",
    "invalid_password": "Mật khẩu phải có ít nhất 8 kí tự",
    "field_required": "Không được để trống",
    "not_match_password": "Mật khẩu xác nhận không trùng khớp"
  },
  "search": {
    "ingredient_not_found": "Không có nguyên liệu nào phù hợp với tìm kiếm của bạn",
    "recipe": "Tìm kiếm công thức nấu ăn"
  },
  "filter": {
    "level": "Độ khó",
    "cuisine": "Loại ẩm thực",
    "category": "Loại món ăn"
  },
  "measure": {
    "height": "Chiều cao (cm)",
    "weight": "Cân nặng (kg)",
    "age": "Độ tuổi"
  },
  "macros": {
    "protein": "Chất đạm",
    "carbs": "Carbs",
    "fat": "Chất béo"
  },
  "meal": {
    "title": "Bữa ăn",
    "breakfast": "Bữa sáng",
    "lunch": "Bữa trưa",
    "dinner": "Bữa tối",
    "list": "Danh sách món ăn",
    "add_dish": "Thêm món ăn",
    "enter_dish": "Nhập tên món ăn"
  },
  "diary_mode": {
    "meal": "Bữa ăn",
    "workout": "Tập luyện"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "vi": vi};
}
