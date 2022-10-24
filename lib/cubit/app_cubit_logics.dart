import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_traveller_app/cubit/app_cubit_state.dart';
import 'package:my_traveller_app/cubit/app_cubits.dart';
import 'package:my_traveller_app/screens/menu_screen.dart';
import 'package:my_traveller_app/screens/welcome_screen.dart';

class AppCubicLogic extends StatefulWidget {
  const AppCubicLogic({Key? key}) : super(key: key);

  @override
  State<AppCubicLogic> createState() => _AppCubicLogicState();
}

class _AppCubicLogicState extends State<AppCubicLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, AppCubitState>(
        builder: (context, state) {
          if (state is InitialState) {
            return const WelcomwScreen();
          } else if (state is LoadingState) {
            return const MenuScreen();
          } else {
            return const CircularProgressIndicator(
              color: Colors.black,
            );
          }
        },
      ),
    );
  }
}
