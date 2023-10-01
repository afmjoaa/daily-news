import 'package:daily_news/ui/shared/theme/theme_cubit.dart';
import 'package:daily_news/utility/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonAppBar extends StatefulWidget {
  final VoidCallback onTabCallback;
  final String title;
  final String? tooltip;

  const CommonAppBar({
    required this.title,
    required this.onTabCallback,
    this.tooltip,
    Key? key,}) : super(key: key);

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}


class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                alignment: Alignment.centerLeft,
                icon: SvgPicture.asset(
                  Utility.isLightTheme(state.themeType) ?
                  'assets/icons/menu.svg' : 'assets/icons/light_menu.svg',
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                  height: 24,
                  width: 24,
                ),
                tooltip: widget.tooltip ?? 'Toggle Appbar menu',
                onPressed: () {
                  widget.onTabCallback.call();
                },
              ),
              const SizedBox(width: 40),
              Text(widget.title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
