import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/news_application.dart';
import '../ui/screens/home/home.dart';
import '../ui/shared/loading/loading_cubit.dart';
import '../ui/shared/theme/theme_cubit.dart';
import 'news_provider.dart';

class NewsApp extends StatelessWidget {
  final NewsApplication _application;

  const NewsApp(this._application, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final app = BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp(
            title: 'Daily News',
            theme: themeState.themeData,
            home: const Home(),
            routes: _application.routes,
            debugShowCheckedModeBanner: false,
          );
        });
    final appProvider = NewsProvider(_application, app);
    NewsProvider.loadingCubit = LoadingCubit();
    return appProvider;
  }
}