import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import '../../../../model/new_item_model.dart';
import '../../../shared/shimmer_widget.dart';
import '../../detail/detail.dart';

class NewsItem extends StatelessWidget {
  final NewsItemModel newsItemModel;

  const NewsItem({super.key, required this.newsItemModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
            Detail.path,
            arguments: newsItemModel.detailDataModel,
        );
      },
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          // Adjust the radius as needed
          child: CachedNetworkImage(
            cacheKey: newsItemModel.imageUrl,
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
        title: Text(
          newsItemModel.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          newsItemModel.description,
          overflow: TextOverflow.fade,
          maxLines: 1,
          softWrap: false,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
