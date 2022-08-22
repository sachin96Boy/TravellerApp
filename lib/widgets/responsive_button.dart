import 'package:flutter/material.dart';
import 'package:my_traveller_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  final bool isResponsive;
  final double width;

  const ResponsiveButton(
      {Key? key, this.isResponsive = false, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.blue,
        ),
        child: Row(
          mainAxisAlignment: isResponsive
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive
                ? Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: const AppText(
                      text: "Search for content",
                      color: Colors.white,
                    ),
                  )
                : const SizedBox(),
            Image.network(
                "https://i.ibb.co/6BSvybG/icons8-triller-app-480.png"),
          ],
        ),
      ),
    );
  }
}
