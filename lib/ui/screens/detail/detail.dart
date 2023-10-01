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
      body: ListView(
        children: [
          CommonAppBar(
            onTabCallback: () => Navigator.of(context).pop(),
            darkAssetLocation: 'assets/icons/arrow.svg',
            lightAssetLocation: 'assets/icons/light_arrow.svg',
            title: 'Detail News',
            tooltip: 'Back to dashboard',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  detailDataModel.title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Text(
                      detailDataModel.author,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      detailDataModel.publishedAt,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Text(
                  detailDataModel.description,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 16.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  // Adjust the radius as needed
                  child: Image.network(
                    detailDataModel.imageUrl,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  detailDataModel.content,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
