import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'screens/localization/localization.dart';

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
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: TranslationDemo(),
    );
  }
}
