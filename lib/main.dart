import 'package:five_laps_on_the_playground/routes/app_pages.dart';
import 'package:five_laps_on_the_playground/shared/logger/logger_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lang/translation_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}