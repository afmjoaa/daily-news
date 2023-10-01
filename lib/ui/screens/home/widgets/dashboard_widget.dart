import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';

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
    return RefreshIndicator(
      displacement: 64,
      color: const Color(0xff836eff),
      onRefresh: _pullRefresh,
      child: Scaffold(
        body: ListView(
          children: [
            CommonAppBar(
              onTabCallback: () => widget.zoomDrawerController.toggle?.call(),
              title: 'Daily News',
            ),
            Container()
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
