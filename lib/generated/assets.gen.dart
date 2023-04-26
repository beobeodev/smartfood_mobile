/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Mulish-Bold.ttf
  String get mulishBold => 'assets/fonts/Mulish-Bold.ttf';

  /// File path: assets/fonts/Mulish-Medium.ttf
  String get mulishMedium => 'assets/fonts/Mulish-Medium.ttf';

  /// File path: assets/fonts/Mulish-Regular.ttf
  String get mulishRegular => 'assets/fonts/Mulish-Regular.ttf';

  /// List of all assets
  List<String> get values => [mulishBold, mulishMedium, mulishRegular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  $AssetsIconsHomeGen get home => const $AssetsIconsHomeGen();
  $AssetsIconsLauncherGen get launcher => const $AssetsIconsLauncherGen();
  $AssetsIconsNavbarGen get navbar => const $AssetsIconsNavbarGen();
}

class $AssetsLocalesGen {
  const $AssetsLocalesGen();

  /// File path: assets/locales/en.json
  String get en => 'assets/locales/en.json';

  /// File path: assets/locales/vi.json
  String get vi => 'assets/locales/vi.json';

  /// List of all assets
  List<String> get values => [en, vi];
}

class $AssetsModelsGen {
  const $AssetsModelsGen();

  /// File path: assets/models/best.tflite
  String get best => 'assets/models/best.tflite';

  /// File path: assets/models/labels.txt
  String get labels => 'assets/models/labels.txt';

  /// List of all assets
  List<String> get values => [best, labels];
}

class $AssetsIconsHomeGen {
  const $AssetsIconsHomeGen();

  $AssetsIconsHomeNutritionGen get nutrition =>
      const $AssetsIconsHomeNutritionGen();
}

class $AssetsIconsLauncherGen {
  const $AssetsIconsLauncherGen();

  /// File path: assets/icons/launcher/app_icon.png
  AssetGenImage get appIcon =>
      const AssetGenImage('assets/icons/launcher/app_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [appIcon];
}

class $AssetsIconsNavbarGen {
  const $AssetsIconsNavbarGen();

  /// File path: assets/icons/navbar/favorite.svg
  SvgGenImage get favorite =>
      const SvgGenImage('assets/icons/navbar/favorite.svg');

  /// File path: assets/icons/navbar/find_recipe.svg
  SvgGenImage get findRecipe =>
      const SvgGenImage('assets/icons/navbar/find_recipe.svg');

  /// File path: assets/icons/navbar/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/navbar/home.svg');

  /// File path: assets/icons/navbar/profile.svg
  SvgGenImage get profile =>
      const SvgGenImage('assets/icons/navbar/profile.svg');

  /// List of all assets
  List<SvgGenImage> get values => [favorite, findRecipe, home, profile];
}

class $AssetsIconsHomeNutritionGen {
  const $AssetsIconsHomeNutritionGen();

  /// File path: assets/icons/home/nutrition/weightlifting.svg
  SvgGenImage get weightlifting =>
      const SvgGenImage('assets/icons/home/nutrition/weightlifting.svg');

  /// List of all assets
  List<SvgGenImage> get values => [weightlifting];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsLocalesGen locales = $AssetsLocalesGen();
  static const $AssetsModelsGen models = $AssetsModelsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
