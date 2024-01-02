import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterexamples/screens/customCircular/custom_circular.dart';
//import 'package:flutterexamples/screens/calendar/calendar.dart';
//import 'package:flutterexamples/screens/gradient/gradient_weve.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    path: 'assets/locales',
    supportedLocales: [Locale('en', 'UK'), Locale('es', 'SP')],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Localization Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      //home: FlutterFluxApp(),
      // home: AnimatedGradientWave(),
      //home: Calendar(),
      home: CustomCircular(),
    );
  }
}
