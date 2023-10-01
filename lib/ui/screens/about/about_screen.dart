import 'package:flutter/material.dart';
import '../../shared/common_appbar.dart';

class AboutScreen extends StatelessWidget {
  static const String path = '/about_screen';

  const AboutScreen({Key? key}) : super(key: key);

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
        const Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Creator: A.F.M. Mohimenul Joaa',
                style: TextStyle(
                    height: 1.3, fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Demonstrating:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
              Text(
                '1. Wire framing, UX design\n'
                '2. Clean Architecture, Use case pattern\n'
                '3. Local data caching\n'
                '4. Network image caching\n'
                '5. Inherited widget/provider\n'
                '6. App routing\n'
                '7. cubit/BLoC pattern\n'
                '8. Repository pattern\n'
                '9. Data flow: UI_LAYER <=> APPLICATION_LAYER(BLoC) <=> DOMAIN_LAYER <=> DATA_LAYER\n'
                '10. Flare animation loading\n'
                '11. Error handling\n'
                '12. Permission handling\n'
                '13. Pull to refresh',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Improvement Scope:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
              Text(
                '1. Use Relative imports where-ever possible.\n'
                '2. Write Unit test.\n'
                '3. Get all constants like: Color, assets, margin, padding etc from respective constant classes.\n'
                '4. Rather then reading text file as an map read it as an object\n'
                '5. Write better dto to serve data to UI layer'
                '6. Add the dark theme etc.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
