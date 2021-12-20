import 'package:flutter/material.dart';

class WelcomwScreen extends StatefulWidget {
  const WelcomwScreen({Key? key}) : super(key: key);

  @override
  _WelcomwScreenState createState() => _WelcomwScreenState();
}

class _WelcomwScreenState extends State<WelcomwScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Welcome'),
      ),
    );
  }
}
