import 'package:flutter/material.dart';
import 'package:my_traveller_app/widgets/appLargeText.dart';
import 'package:my_traveller_app/widgets/appText.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  var custicons = {
    'person_outline': Icons.person_outline,
    'person_pin': Icons.person_pin,
    'person_pin_outlined': Icons.person_pin_outlined,
    'ac_unit_sharp': Icons.ac_unit_sharp,
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  child: const Icon(Icons.person_sharp),
                )
              ],
            ),
          ),
          const SizedBox(height: 25.0),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            child: const AppLargeText(text: "Discover"),
          ),
          const SizedBox(height: 18.0),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 20.0, right: 20.0),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.withOpacity(0.8),
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(color: Colors.blue, radius: 4.0),
                tabs: const [
                  Tab(
                    text: "Places",
                  ),
                  Tab(
                    text: "Insperations",
                  ),
                  Tab(
                    text: "Emotions",
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            height: 300.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15.0, top: 10.0),
                      width: 200.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://i.ibb.co/jkM7SL7/wallpaperflare-com-wallpaper.jpg"),
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
                Text("hi"),
                Text("hi"),
              ],
            ),
          ),
          const SizedBox(height: 18.0),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppLargeText(
                  text: "Explore More",
                  size: 22.0,
                ),
                AppText(
                  text: "See more",
                  color: Colors.black87,
                )
              ],
            ),
          ),
          const SizedBox(height: 9),
          Container(
            height: 100.0,
            width: double.maxFinite,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.black26,
                            ),
                            child: Icon(custicons.values.elementAt(index)),
                          ),
                          Container(
                            width: 30.0,
                            height: 20.0,
                            child: AppText(
                              text: custicons.keys.elementAt(index),
                            ),
                          ),
                        ],
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  final double radius;
  const CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  final double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;

    final Offset circledOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circledOffset, radius, _paint);
  }
}
