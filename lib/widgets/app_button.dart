import 'package:flutter/material.dart';
import 'package:my_traveller_app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  final bool isIcon;

  AppButton(
      {Key? key,
      this.text,
      this.icon,
      required this.color,
      required this.backgroundColor,
      required this.size,
      required this.borderColor,
      this.isIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 20.0, top: 10.0),
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
      ),
      child: isIcon
          ? Icon(
              icon,
              color: color,
            )
          : AppText(
              text: text!,
              color: Colors.black,
            ),
    );
  }
}
