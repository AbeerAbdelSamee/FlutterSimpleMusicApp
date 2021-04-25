import 'package:ecommerce/core/native_services/navigation_service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/history/presentation/pages/history.dart';
import 'features/home/presentation/pages/home.dart';
// import 'package:device_preview/device_preview.dart';

// void main() => runApp(
//   DevicePreview(
//     @override
//     Widget build(BuildContext context) {
//       return MyApp() ;
//     } // Wrap your app
//   ),
// );

// Future<void> main() async => {
//       runApp(
//         // MyApp(),
//         DevicePreview(
//           child: MyApp(), // Wrap your app
//         ),
//       )
//     };
Future<void> main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();

    return MaterialApp(
        // builder: DevicePreview.appBuilder,
        initialRoute: HomeWidget.routeName,
        onGenerateRoute: gNavigationService.onGenerateRoute,
        navigatorKey: gNavigationService.navigationKey,
        routes: {
          HomeWidget.routeName: (context) => HomeWidget(),
          HistoryWidget.routeName: (context) => HistoryWidget(),
        });
  }
}
