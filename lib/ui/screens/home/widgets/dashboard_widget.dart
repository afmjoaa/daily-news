import 'package:daily_news/domain/entities/top_headlines.dart';
import 'package:daily_news/ui/screens/home/widgets/news_item.dart';
import 'package:daily_news/ui/screens/home/widgets/news_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';

import '../../../../data/storage/news_hive_storage.dart';
import '../../../../model/new_item_model.dart';
import '../../../shared/common_appbar.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';
import 'data_unavailable_widget.dart';

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
  late final HomeCubit _homeCubit;
  late Future<void> _hiveInit;

  @override
  void initState() {
    super.initState();
    _homeCubit = HomeCubit();
    _hiveInit = NewsHiveStorage.init();
    _hiveInit.whenComplete(() => _homeCubit.getTopHeadlines());
  }

  Future<void> _pullRefresh() async {
    _homeCubit.getTopHeadlines();
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
            // Expanded(
            //   child: ListView.builder(
            //     padding: const EdgeInsets.all(0),
            //     itemCount: 10,
            //     itemBuilder: (ctx, index) {
            //       return NewsItem(
            //         newsItemModel: NewsItemModel(
            //           title: "title",
            //           description: "description",
            //           imageUrl:
            //               "https://media.cnn.com/api/v1/images/stellar/prod/230930170539-01-crash-ammonia-leak-illinois-0930-still.jpg?c=16x9&q=w_800,c_fill",
            //         ),
            //       );
            //     },
            //   ),
            // ),
            BlocProvider.value(
              value: _homeCubit,
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return state.when(
                    homeInitialState: () => Container(),
                    dataAvailableState: (TopHeadlines topHeadlines) => NewsList(articles: topHeadlines.articles,),
                    dataUnavailableState: (String reason) =>
                            DataUnavailableWidget(dataUnavailableReason: reason,),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _homeCubit.close();
    NewsHiveStorage.clear();
    super.dispose();
  }
}
