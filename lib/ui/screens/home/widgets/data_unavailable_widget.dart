import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utility/news_texts.dart';
import '../cubit/home_cubit.dart';

class DataUnavailableWidget extends StatelessWidget {
  final String dataUnavailableReason;

  const DataUnavailableWidget({Key? key, required this.dataUnavailableReason}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/error.svg',
              fit: BoxFit.contain,
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 16),
            Text(
              dataUnavailableReason,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(),
              onPressed: () async {
                context.read<HomeCubit>().getTopHeadlines();
              },
              child: Text(
                NewsTexts.get()['refreshCTA'],
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
