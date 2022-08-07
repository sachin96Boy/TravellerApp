import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_traveller_app/widgets/app_large_text.dart';
import 'package:my_traveller_app/widgets/app_text.dart';
import 'package:my_traveller_app/widgets/responsive_button.dart';

class WelcomwScreen extends StatefulWidget {
  const WelcomwScreen({Key? key}) : super(key: key);

  @override
  _WelcomwScreenState createState() => _WelcomwScreenState();
}

class _WelcomwScreenState extends State<WelcomwScreen> {
  List images = [
    dotenv.get('BACK_IMAGE1'),
    dotenv.get('BACK_IMAGE2'),
    dotenv.get('BACK_IMAGE3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: images.length,
      itemBuilder: (_, index) {
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(images[index], scale: 2.0),
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.bottomCenter,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AppLargeText(text: 'Trips'),
                    AppText(
                      text: 'Mountain',
                      size: 30.0,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 250,
                      child: AppText(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
                        color: Colors.black45,
                        size: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ResponsiveButton(width: 120.0),
                  ],
                ),
                Column(
                  children: List.generate(
                    images.length,
                    (indexDots) => Container(
                      margin: const EdgeInsets.only(bottom: 4.0),
                      width: 8.0,
                      height: index == indexDots ? 25.0 : 8.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: index == indexDots
                            ? Colors.blue
                            : Colors.blue.withOpacity(0.6),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
