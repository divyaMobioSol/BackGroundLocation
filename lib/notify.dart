// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:geolocator/geolocator.dart';

// class Notification {
//   FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

//   Future showNotificationWithoutSound(Position position) async {
//     var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
//         '1', 'location-bg',
//         playSound: false, importance: Importance.max, priority: Priority.high);
//     var iOSPlatformChannelSpecifics =
//         new IOSNotificationDetails(presentSound: false);
//     // ignore: unnecessary_new
//     var platformChannelSpecifics = new NotificationDetails();
//     await flutterLocalNotificationsPlugin!.show(
//       0,
//       'Location fetched',
//       position.toString(),
//       platformChannelSpecifics,
//       payload: '',
//     );
//   }

//   Notification() {
//     var initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     var initializationSettingsIOS = IOSInitializationSettings();
//     var initializationSettings = InitializationSettings();
//     flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//     flutterLocalNotificationsPlugin!.initialize(initializationSettings);
//   }
// }

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geolocator/geolocator.dart';

class Notification {
  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

  Future showNotificationWithoutSound(Position position) async {
    print(position.toString());
    var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
        '1', 'location-bg',
        playSound: false, importance: Importance.max, priority: Priority.high);
    var iOSPlatformChannelSpecifics =
        new IOSNotificationDetails(presentSound: false);
    var platformChannelSpecifics = new NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin!.show(
      0,
      'Location fetched',
      position.toString(),
      platformChannelSpecifics,
      payload: '',
    );
  }

  Notification() {
    var initializationSettingsAndroid =
        new AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
      android: initializationSettingsAndroid,
    );
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin!.initialize(initializationSettings);
  }
}
