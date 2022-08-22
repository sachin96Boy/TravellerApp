import 'package:flutter/material.dart';
import 'package:my_traveller_app/widgets/app_button.dart';
import 'package:my_traveller_app/widgets/app_large_text.dart';
import 'package:my_traveller_app/widgets/app_text.dart';
import 'package:my_traveller_app/widgets/responsive_button.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({Key? key}) : super(key: key);

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  int starRating = 4;
  int selectedIndex = -1; // -1 means no selection
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.joblo.com/wp-content/uploads/2022/03/thirteen-lives-poster-400x600.jpg",
                        scale: 1.0),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20.0,
              top: 40.0,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => print("button pressed"),
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 330.0,
              child: Container(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                width: MediaQuery.of(context).size.width,
                height: 500.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Fugitsu",
                            color: Colors.black.withOpacity(0.8),
                          ),
                          const AppLargeText(
                            text: "\$ 250",
                            color: Colors.black45,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_pin,
                            color: Colors.black45,
                          ),
                          SizedBox(width: 10.0),
                          AppText(
                            text: "New Jersy",
                            color: Colors.black38,
                          )
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: index + 1 < starRating
                                          ? Colors.amber
                                          : Colors.black54,
                                    )),
                          ),
                          const SizedBox(width: 10.0),
                          const AppText(text: "4.0", color: Colors.black45),
                        ],
                      ),
                      const SizedBox(height: 25.0),
                      const AppLargeText(
                        text: "People",
                        color: Colors.black54,
                        size: 20.0,
                      ),
                      const SizedBox(height: 5.0),
                      const AppText(
                        text: "Number of People in the Group",
                        color: Colors.black45,
                      ),
                      const SizedBox(height: 5.0),
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: AppButton(
                                  size: 40.0,
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                  backgroundColor: selectedIndex == index
                                      ? Colors.black
                                      : Colors.white,
                                  borderColor: selectedIndex == index
                                      ? Colors.black38
                                      : Colors.black12,
                                  isIcon: false,
                                  text: (index + 1).toString()),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const AppLargeText(
                        text: "Description",
                        color: Colors.black54,
                        size: 20.0,
                      ),
                      const SizedBox(height: 10.0),
                      const AppText(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia sagittis lectus porta tincidunt. Vivamus a vulputate enim. Aliquam mattis erat et pellentesque ultricies. Sed auctor cursus nibh sit amet molestie. Donec diam ipsum, hendrerit ac tincidunt imperdiet, finibus quis nibh. Suspendisse non dolor sit amet neque",
                        color: Colors.black45,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
              child: Row(children: [
                AppButton(
                  color: Colors.blueAccent,
                  backgroundColor: Colors.white,
                  size: 60.0,
                  borderColor: Colors.black38,
                  isIcon: true,
                  icon: Icons.favorite_border,
                ),
                ResponsiveButton(
                  isResponsive: true,
                  width: MediaQuery.of(context).size.width,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
