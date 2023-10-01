import 'package:flutter/material.dart';

import 'app_routes.dart';
import 'application.dart';
import '../utility/log.dart';

class NewsApplication implements Application {

  //Any storage that is needed through out the app
  late Map<String, WidgetBuilder> routes;

  @override
  void onCreate() {
    _initLog();
    _initRouter();
  }

  void _initLog() {
    Log.init();
  }

  void _initRouter() {
    routes = AppRoutes.configureRoutes();
  }

  @override
  void onTerminate() {

  }

}