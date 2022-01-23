import 'package:flutter/material.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({Key? key}) : super(key: key);

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                        "https://i.ibb.co/jkM7SL7/wallpaperflare-com-wallpaper.jpg"),
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
            
          ],
        ),
      ),
    );
  }
}
