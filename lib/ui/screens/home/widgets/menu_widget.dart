import 'package:daily_news/model/detail_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../shared/theme/theme_cubit.dart';
import '../../about/about_screen.dart';
import '../../detail/detail.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
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
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(
                  //     content: Text("Dark theme isn't implemented yet"),
                  //   ),
                  // );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          'assets/icons/theme.svg',
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 15,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Dark',
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
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  // Navigator.of(context).pushNamed(AboutScreen.path);
                  Navigator.of(context).pushNamed(Detail.path,
                      arguments: DetailDataModel(
                        title: "title",
                        author: "author",
                        publishedAt: "publishedAt",
                        description: "description",
                        imageUrl:
                            "https://media.cnn.com/api/v1/images/stellar/prod/230930170539-01-crash-ammonia-leak-illinois-0930-still.jpg?c=16x9&q=w_800,c_fill",
                        content: "content",
                      ));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          'assets/icons/about.svg',
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
  }
}
