import 'package:daily_news/ui/screens/home/widgets/news_item.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';

import '../../../../model/new_item_model.dart';
import '../../../shared/common_appbar.dart';

class DashBoardWidget extends StatefulWidget {
  final ZoomDrawerController zoomDrawerController;

  const DashBoardWidget({
    Key? key,
    required this.zoomDrawerController,
  }) : super(key: key);

  @override
  _DashBoardWidgetState createState() => _DashBoardWidgetState();
}

class _DashBoardWidgetState extends State<DashBoardWidget> {
  // late final HomeCubit _homeCubit;
  late Future<void> _hiveInit;

  @override
  void initState() {
    super.initState();
    // _homeCubit = HomeCubit();
    // _hiveInit = SunnyHiveStorage.init();
    // _hiveInit.whenComplete(_homeCubit.getCurrentWeather);
  }

  Future<void> _pullRefresh() async {
    // _homeCubit.getCurrentWeather();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: RefreshIndicator(
      displacement: 64,
      color: const Color(0xff836eff),
      onRefresh: _pullRefresh,
      child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: CommonAppBar(
                darkAssetLocation: 'assets/icons/menu.svg',
                lightAssetLocation: 'assets/icons/light_menu.svg',
                onTabCallback: () => widget.zoomDrawerController.toggle?.call(),
                title: 'Daily News',
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: 10,
                itemBuilder: (ctx, index) {
                  return NewsItem(
                    newsItemModel: NewsItemModel(
                      title: "title",
                      description: "description",
                      imageUrl:
                          "https://media.cnn.com/api/v1/images/stellar/prod/230930170539-01-crash-ammonia-leak-illinois-0930-still.jpg?c=16x9&q=w_800,c_fill",
                    ),
                  );
                },
              ),
            )
            // BlocProvider.value(
            //   value: _homeCubit,
            //   child: BlocBuilder<HomeCubit, HomeState>(
            //     builder: (context, state) {
            //       return state.when(
            //         homeInitialState: () => Container(),
            //         dataAvailableState: (CurrentWeather currentWeather) => _getWeatherView(currentWeather),
            //         dataUnavailableState: (DataUnavailableReason dataUnavailableReason) =>
            //                 DataUnavailableWidget(dataUnavailableReason: dataUnavailableReason,),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // _homeCubit.close();
    // SunnyHiveStorage.clear();
    super.dispose();
  }
}
