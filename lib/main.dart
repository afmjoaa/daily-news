import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../core/news_application.dart';

import 'core/service_locator.dart';
import 'core/app.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  NewsApplication application = NewsApplication();
  application.onCreate();
  await setUpServiceLocators();
  await sl.allReady();
  startAppComponent(application);
}

void startAppComponent(var application) {
  runApp(SunnyApp(application));
}