import 'package:daily_news/model/detail_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utility/utility.dart';
import '../../../shared/theme/theme_cubit.dart';
import '../../about/about_screen.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.themeData.colorScheme.background,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () {
                      context.read<ThemeCubit>().toggleTheme();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              Utility.isLightTheme(state.themeType)
                                  ? 'assets/icons/theme.svg'
                                  : 'assets/icons/light_theme.svg',
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15,
                            ),
                            alignment: Alignment.centerLeft,
                            child: Utility.isLightTheme(state.themeType)?
                            _getThemeText("Dark") : _getThemeText("Light"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () {
                      Navigator.of(context).pushNamed(AboutScreen.path);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              Utility.isLightTheme(state.themeType) ?
                              'assets/icons/about.svg' : 'assets/icons/light_about.svg',
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'About',
                              style: TextStyle(
                                height: 1.5,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Text _getThemeText(String text) {
    return Text(
      text,
      style: const TextStyle(
        height: 1.5,
        fontSize: 20,
      ),
    );
  }
}
