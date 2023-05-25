import 'dart:async';
import 'dart:developer';

import 'package:advance_image_picker/advance_image_picker.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smarthealthy/app/app_bloc_observer.dart';
import 'package:smarthealthy/common/helpers/firebase_service.dart';
import 'package:smarthealthy/common/theme/color_styles.dart';
import 'package:smarthealthy/di/di.dart';
import 'package:smarthealthy/flavors.dart';

typedef BootstrapBuilder = FutureOr<Widget> Function();

Future<void> bootstrap(BootstrapBuilder builder, Flavor flavor) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      AppFlavor.appFlavor = flavor;

      await initializeApp();

      runApp(
        await builder(),
      );
    },
    (error, stack) =>
        log(error.toString(), stackTrace: stack, name: 'runZonedGuarded'),
  );
}

Future<void> initializeApp() async {
  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = [];

  await FirebaseService.init();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await Hive.initFlutter();

  await configureDependencies();

  _setUpImagePickerConfigs();

  Bloc.observer = AppBlocObserver();
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await FirebaseService.init();
  await FirebaseService.initNotification();
  FirebaseService.showNotification(message);
}

void _setUpImagePickerConfigs() {
  final ImagePickerConfigs configs = ImagePickerConfigs();

  configs.appBarBackgroundColor = Colors.white;
  configs.appBarTextColor = ColorStyles.zodiacBlue;
  configs.stickerFeatureEnabled = false;
  configs.translateFunc = (name, value) => Intl.message(value, name: name);
}
