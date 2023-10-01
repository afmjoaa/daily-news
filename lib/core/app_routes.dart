import 'package:daily_news/ui/screens/about/about_screen.dart';
import 'package:flutter/material.dart';

import '../model/detail_data_model.dart';
import '../ui/screens/detail/detail.dart';
import '../ui/screens/home/home.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> configureRoutes() {
    return {
      Home.path: (context) => const Home(),
      AboutScreen.path: (context) => const AboutScreen(),
      Detail.path: (context) {
        DetailDataModel detailDataModel = ModalRoute.of(context)?.settings.arguments as DetailDataModel;
        return Detail(detailDataModel: detailDataModel);
      }
    };
  }
}