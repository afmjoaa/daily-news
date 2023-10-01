import 'package:flutter/material.dart';

import 'news_application.dart';
import '../ui/shared/loading/loading_cubit.dart';

class NewsProvider extends InheritedWidget {

  static late NewsApplication appInstance;
  static late LoadingCubit loadingCubit;

  final NewsApplication application;

  NewsProvider(this.application, Widget child, {Key? key})
      : super(key: key, child: child) {
    appInstance = application;
  }

  @override
  bool updateShouldNotify(_) => true;

  static NewsProvider of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType(aspect: NewsProvider) as NewsProvider);
  }
}