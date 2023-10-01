import 'package:flutter/material.dart';

import '../core/news_application.dart';
import '../ui/screens/home/home.dart';
import '../ui/shared/loading/loading_cubit.dart';
import 'news_provider.dart';

class SunnyApp extends StatelessWidget {
  final NewsApplication _application;

  const SunnyApp(this._application, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Daily News',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        fontFamily: 'Nunito',
      ),
      home: const Home(),
      routes: _application.routes,
      debugShowCheckedModeBanner: false,
    );

    final appProvider = NewsProvider(_application, app);
    NewsProvider.loadingCubit = LoadingCubit();
    return appProvider;
  }
}