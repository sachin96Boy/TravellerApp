import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final bool isResponsive;
  final double width;

  const ResponsiveButton(
      {Key? key, this.isResponsive = false, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://i.ibb.co/6BSvybG/icons8-triller-app-480.png"),
        ],
      ),
    );
  }
}
