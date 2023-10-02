import 'package:daily_news/model/request_query.dart';
import 'package:daily_news/ui/shared/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utility/news_texts.dart';
import '../cubit/home_cubit.dart';

class QueryWidget extends StatefulWidget {
  final HomeCubit homeCubit;

  const QueryWidget({super.key, required this.homeCubit});

  @override
  State<QueryWidget> createState() => _QueryWidgetState();
}

class _QueryWidgetState extends State<QueryWidget> {
  RequestQuery requestQuery = RequestQuery("us", "business", "");
  String categoryHintText = "Category";
  String countryHintText = "Country";

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color:
                      state.themeData.colorScheme.surface, // Background color
                ),
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'Enter Query',
                    contentPadding: EdgeInsets.all(16.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 12.0), // Spacer between EditText and Row
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: state
                            .themeData.colorScheme.surface, // Background color
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: DropdownButton<String>(
                        dropdownColor: state.themeData.colorScheme.secondary,
                        underline: const SizedBox(),
                        isExpanded: true,
                        hint: Text(
                          countryHintText,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        items: NewsTexts.countryList().map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            countryHintText =
                                newValue ?? 'Country'; // Update hint text
                          });
                          requestQuery.country =
                              newValue ?? NewsTexts.countryList()[51];
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0), // Spacer between Dropdowns
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: state
                            .themeData.colorScheme.surface, // Background color
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: DropdownButton<String>(
                        dropdownColor: state.themeData.colorScheme.secondary,
                        underline: const SizedBox(),
                        isExpanded: true,
                        hint: Text(
                          categoryHintText,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        items: NewsTexts.categoryList().map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            categoryHintText =
                                newValue ?? 'Category'; // Update hint text
                          });
                          requestQuery.category =
                              newValue ?? NewsTexts.categoryList()[0];
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  backgroundColor: Colors.green.shade100.withAlpha(100),
                ),
                onPressed: () async {
                  requestQuery.query = _controller.text;
                  widget.homeCubit.getTopHeadlines(requestQuery: requestQuery);
                },
                child: Text(
                  NewsTexts.get()['search'],
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
