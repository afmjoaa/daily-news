import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import '../../../../model/detail_data_model.dart';
import '../../../../model/new_item_model.dart';
import '../../../shared/shimmer_widget.dart';
import '../../detail/detail.dart';

class NewsItem extends StatelessWidget {
  final NewsItemModel newsItemModel;

  const NewsItem({super.key, required this.newsItemModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Detail.path,
            arguments: DetailDataModel(
              title: "This is the title",
              author: "AFM Joaa",
              publishedAt: "2023, 10 July",
              description: "Holiday was sent to Portland as part of the Damian Lillard deal earlier this week",
              imageUrl:
                  "https://media.cnn.com/api/v1/images/stellar/prod/230930170539-01-crash-ammonia-leak-illinois-0930-still.jpg?c=16x9&q=w_800,c_fill",
              content: "content",
            ));
      },
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          // Adjust the radius as needed
          child: CachedNetworkImage(
            imageUrl: newsItemModel.imageUrl,
            placeholder: (_, __) => const ShimmerWidget(),
            errorWidget: (_, __, error) => const ShimmerWidget(),
            fit: BoxFit.cover,
            width: 100,
            height: 100,
            fadeOutDuration: const Duration(seconds: 1),
            fadeInDuration: const Duration(seconds: 2),
            cacheManager: DefaultCacheManager(),
          ),
        ),
        title: Text(newsItemModel.title),
        subtitle: Text(
          newsItemModel.description,
          overflow: TextOverflow.fade,
          maxLines: 2,
          softWrap: false,
        ),
      ),
    );
  }
}
