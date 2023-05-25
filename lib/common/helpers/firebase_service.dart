import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:smarthealthy/flavors.dart';
import 'package:smarthealthy/generated/firebase_options/firebase_options_dev.dart'
    as firebase_option_dev;
import 'package:smarthealthy/generated/firebase_options/firebase_options_qa.dart'
    as firebase_option_qa;
import 'package:smarthealthy/generated/firebase_options/firebase_options_staging.dart'
    as firebase_option_staging;

abstract class FirebaseService {
  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static bool _hasInitialized = false;

  static const AndroidNotificationChannel _channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description: 'This channel is used for important notifications.',
    importance: Importance.max,
  );

  static FirebaseOptions _getFirebaseOptions() {
    switch (AppFlavor.appFlavor) {
      case Flavor.QA:
        return firebase_option_qa.DefaultFirebaseOptions.currentPlatform;
      case Flavor.STAGING:
        return firebase_option_staging.DefaultFirebaseOptions.currentPlatform;
      case Flavor.DEV:
      default:
        return firebase_option_dev.DefaultFirebaseOptions.currentPlatform;
    }
  }

  static Future<void> init() async {
    await Firebase.initializeApp(
      options: _getFirebaseOptions(),
    );
    await requestNotificationPermission();
    await initNotification();
  }

  static Future<void> initNotification() async {
    if (_hasInitialized) return;

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);

    _messaging.subscribeToTopic('topic');

    FirebaseMessaging.onMessage.listen(showNotification);

    _hasInitialized = true;
  }

  static void showNotification(RemoteMessage message) {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;

    // If `onMessage` is triggered with a notification, construct our own
    // local notification to show to users using the created channel.
    if (android != null) {
      _flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification?.title ?? 'Test',
        notification?.body ?? 'Test',
        NotificationDetails(
          android: AndroidNotificationDetails(
            _channel.id,
            _channel.name,
            channelDescription: _channel.description,
            icon: '@mipmap/ic_launcher',
            // other properties...
          ),
        ),
      );
    }
  }

  static Future<void> requestNotificationPermission() async {
    await _messaging.requestPermission();
  }
}
