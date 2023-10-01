import 'package:daily_news/ui/shared/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(),
      child: NewsApp(application),
    ),
  );
}