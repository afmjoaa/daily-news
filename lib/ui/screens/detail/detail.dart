import 'package:flutter/material.dart';

import '../../../model/detail_data_model.dart';
import '../../shared/common_appbar.dart';

class Detail extends StatelessWidget {
  static const String path = '/detail';

  final DetailDataModel detailDataModel;

  const Detail({
    super.key,
    required this.detailDataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      CommonAppBar(
        onTabCallback: () => Navigator.of(context).pop(),
        assetLocation: 'assets/icons/arrow.svg',
        title: 'About',
        tooltip: 'Back to dashboard',
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            detailDataModel.title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Text(
                'Author: ${detailDataModel.author}',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                'Published at: ${detailDataModel.publishedAt}',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Text(
            detailDataModel.description,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 16.0),
          Image.network(
            detailDataModel.imageUrl,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.0),
          Text(
            detailDataModel.content,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    ]));
  }
}
