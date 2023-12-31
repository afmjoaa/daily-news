import 'package:daily_news/core/news_provider.dart';
import 'package:intl/intl.dart';

import '../ui/shared/theme/theme_cubit.dart';

class Utility{

  static String timeStampToDate(timeStamp) {
    return DateFormat('MM/dd/yyyy').format(DateTime.fromMillisecondsSinceEpoch(timeStamp*1000));
  }

  static String timeStampToTime(timeStamp) {
    return DateFormat('hh:mm a').format(DateTime.fromMillisecondsSinceEpoch(timeStamp*1000));
  }

  static void startLoadingAnimation() {
    NewsProvider.loadingCubit.startLoading();
  }

  static void completeLoadingAnimation() {
    NewsProvider.loadingCubit.resetLoading();
  }

  static void showLoadingFailedError(String errorMessage) {
    NewsProvider.loadingCubit.loadingFailed(errorMessage);
  }

  static bool isLightTheme(ThemeType themeType) {
    if (themeType == ThemeType.light) {
      return true;
    } else {
      return false;
    }
  }

}